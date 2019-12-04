.class final Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;
.super Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
.source "RegisteredMediaRouteProvider.java"

# interfaces
.implements Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/RegisteredMediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RegisteredRouteController"
.end annotation


# instance fields
.field private mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

.field private mControllerId:I

.field private mPendingSetVolume:I

.field private mPendingUpdateVolumeDelta:I

.field private final mRouteGroupId:Ljava/lang/String;

.field private final mRouteId:Ljava/lang/String;

.field private mSelected:Z

.field final synthetic this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/RegisteredMediaRouteProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 603
    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;-><init>()V

    const/4 p1, -0x1

    .line 597
    iput p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mPendingSetVolume:I

    .line 604
    iput-object p2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mRouteId:Ljava/lang/String;

    .line 605
    iput-object p3, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mRouteGroupId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public attachConnection(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 2

    .line 615
    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 616
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mRouteId:Ljava/lang/String;

    iget-object v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mRouteGroupId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->createRouteController(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mControllerId:I

    .line 617
    iget-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mSelected:Z

    if-eqz v0, :cond_1

    .line 618
    iget v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mControllerId:I

    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->selectRoute(I)V

    .line 619
    iget v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mPendingSetVolume:I

    if-ltz v0, :cond_0

    .line 620
    iget v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mControllerId:I

    invoke-virtual {p1, v1, v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->setVolume(II)V

    const/4 v0, -0x1

    .line 621
    iput v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mPendingSetVolume:I

    .line 623
    :cond_0
    iget v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mPendingUpdateVolumeDelta:I

    if-eqz v0, :cond_1

    .line 624
    iget v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mControllerId:I

    invoke-virtual {p1, v1, v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->updateVolume(II)V

    const/4 p1, 0x0

    .line 625
    iput p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mPendingUpdateVolumeDelta:I

    :cond_1
    return-void
.end method

.method public detachConnection()V
    .locals 2

    .line 632
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_0

    .line 633
    iget v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mControllerId:I

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->releaseRouteController(I)V

    const/4 v0, 0x0

    .line 634
    iput-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    const/4 v0, 0x0

    .line 635
    iput v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mControllerId:I

    :cond_0
    return-void
.end method

.method public getControllerId()I
    .locals 0

    .line 610
    iget p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mControllerId:I

    return p0
.end method

.method public onControlRequest(Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)Z
    .locals 1

    .line 686
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_0

    .line 687
    iget p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mControllerId:I

    invoke-virtual {v0, p0, p1, p2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->sendControlRequest(ILandroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onRelease()V
    .locals 1

    .line 641
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    invoke-virtual {v0, p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->onControllerReleased(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;)V

    return-void
.end method

.method public onSelect()V
    .locals 1

    const/4 v0, 0x1

    .line 646
    iput-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mSelected:Z

    .line 647
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_0

    .line 648
    iget p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mControllerId:I

    invoke-virtual {v0, p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->selectRoute(I)V

    :cond_0
    return-void
.end method

.method public onSetVolume(I)V
    .locals 1

    .line 667
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_0

    .line 668
    iget p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mControllerId:I

    invoke-virtual {v0, p0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->setVolume(II)V

    goto :goto_0

    .line 670
    :cond_0
    iput p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mPendingSetVolume:I

    const/4 p1, 0x0

    .line 671
    iput p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mPendingUpdateVolumeDelta:I

    :goto_0
    return-void
.end method

.method public onUnselect()V
    .locals 1

    const/4 v0, 0x0

    .line 654
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->onUnselect(I)V

    return-void
.end method

.method public onUnselect(I)V
    .locals 1

    const/4 v0, 0x0

    .line 659
    iput-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mSelected:Z

    .line 660
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_0

    .line 661
    iget p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mControllerId:I

    invoke-virtual {v0, p0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->unselectRoute(II)V

    :cond_0
    return-void
.end method

.method public onUpdateVolume(I)V
    .locals 1

    .line 677
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_0

    .line 678
    iget p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mControllerId:I

    invoke-virtual {v0, p0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->updateVolume(II)V

    goto :goto_0

    .line 680
    :cond_0
    iget v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mPendingUpdateVolumeDelta:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mPendingUpdateVolumeDelta:I

    :goto_0
    return-void
.end method
