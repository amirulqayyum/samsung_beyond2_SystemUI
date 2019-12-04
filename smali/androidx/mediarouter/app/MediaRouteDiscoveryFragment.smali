.class public Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;
.super Landroidx/fragment/app/Fragment;
.source "MediaRouteDiscoveryFragment.java"


# instance fields
.field private mCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

.field private mRouter:Landroidx/mediarouter/media/MediaRouter;

.field private mSelector:Landroidx/mediarouter/media/MediaRouteSelector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private ensureRouteSelector()V
    .locals 2

    .line 105
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    if-nez v0, :cond_1

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "selector"

    .line 108
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 110
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    if-nez v0, :cond_1

    .line 111
    sget-object v0, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    :cond_1
    return-void
.end method

.method private ensureRouter()V
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateCallback()Landroidx/mediarouter/media/MediaRouter$Callback;
    .locals 1

    .line 127
    new-instance v0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment$1;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment$1;-><init>(Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;)V

    return-object v0
.end method

.method public onPrepareCallbackFlags()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public onStart()V
    .locals 3

    .line 145
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 147
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->ensureRouteSelector()V

    .line 148
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->ensureRouter()V

    .line 149
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->onCreateCallback()Landroidx/mediarouter/media/MediaRouter$Callback;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    .line 150
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->onPrepareCallbackFlags()I

    move-result p0

    invoke-virtual {v1, v2, v0, p0}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 157
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v1, v0}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->mCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    .line 162
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method
