FROM node:10.14.0-slim
	
	ENV LANG=C.UTF-8 LC_ALL=C.UTF-8 \
	    NODE_PATH=/opt/node_app/node_modules \
	    PATH=$PATH:/opt/node_app/node_modules/.bin
	

	RUN echo "fs.inotify.max_user_watches=524288" >> /etc/sysctl.conf \
	    && npm install -g yarn@1.21.1 \
	    && mkdir /opt/node_app
	

	WORKDIR /opt/node_app
	COPY package.json yarn.lock /opt/node_app/
	RUN yarn
	

	WORKDIR /opt/node_app/app
	COPY . .
	

	# CMD yarn dev:ssl
	# It's a workaround because we have raw path to node_modules in our application
	CMD cp -RT /opt/node_app/node_modules/. /opt/node_app/app/node_modules/ \