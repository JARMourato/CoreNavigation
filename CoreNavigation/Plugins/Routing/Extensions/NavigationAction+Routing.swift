#if ROUTING
import Foundation
import CoreRoute

extension NavigationAction {
    @discardableResult public func to<RouteType: AbstractRoute>(_ route: RouteType, in router: Router = Navigation.router) -> Self {
        configuration.destination.target = (route, router)
        
        return self
    }
}

#endif
