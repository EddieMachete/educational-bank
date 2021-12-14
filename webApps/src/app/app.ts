'use strict';

import { IAppState } from "@core/boundaries";
import { appStore, IDataStore } from "./store";

export class App {
    private unsubscribeFromStoreHandler: Function;

    public constructor() {
        this.unsubscribeFromStoreHandler =
            appStore.subscribe(
                (state: IAppState, actionType: string) => this.stateChanged(state, actionType)
            );

        console.log(appStore.getState().welcomeMessage);
    }

    public disconnect(): void {
        this.unsubscribeFromStoreHandler();
    }

    public getAppStore(): IDataStore<IAppState> {
        return appStore;
    }

    private stateChanged(state: IAppState, actionType: string): void {
    }
}
