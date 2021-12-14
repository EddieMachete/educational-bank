FROM node:12-slim
	
	ENV LANG=C.UTF-8 LC_ALL=C.UTF-8 \
	    NODE_PATH=/opt/node_app/node_modules \
	    PATH=$PATH:/opt/node_app/node_modules/.bin

	# COPY all build files from Current Directory into the Container
	COPY ./ ./

	RUN npm install

	# the build command will generate a build folder with our assets and javascript bundle in it
	RUN npm run build

	EXPOSE 44333
	
	# Start the process
	CMD ["npm", "start"]
