.class Landroidx/leanback/app/VideoFragment$1;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/app/VideoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/app/VideoFragment;


# direct methods
.method constructor <init>(Landroidx/leanback/app/VideoFragment;)V
    .locals 0

    .line 52
    iput-object p1, p0, Landroidx/leanback/app/VideoFragment$1;->this$0:Landroidx/leanback/app/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 64
    iget-object p0, p0, Landroidx/leanback/app/VideoFragment$1;->this$0:Landroidx/leanback/app/VideoFragment;

    iget-object p0, p0, Landroidx/leanback/app/VideoFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    if-eqz p0, :cond_0

    .line 65
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/leanback/app/VideoFragment$1;->this$0:Landroidx/leanback/app/VideoFragment;

    iget-object v0, v0, Landroidx/leanback/app/VideoFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 59
    :cond_0
    iget-object p0, p0, Landroidx/leanback/app/VideoFragment$1;->this$0:Landroidx/leanback/app/VideoFragment;

    const/4 p1, 0x1

    iput p1, p0, Landroidx/leanback/app/VideoFragment;->mState:I

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/leanback/app/VideoFragment$1;->this$0:Landroidx/leanback/app/VideoFragment;

    iget-object v0, v0, Landroidx/leanback/app/VideoFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 74
    :cond_0
    iget-object p0, p0, Landroidx/leanback/app/VideoFragment$1;->this$0:Landroidx/leanback/app/VideoFragment;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/leanback/app/VideoFragment;->mState:I

    return-void
.end method