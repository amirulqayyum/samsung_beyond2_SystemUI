.class Landroidx/core/widget/SeslEdgeEffect$1;
.super Landroid/os/Handler;
.source "SeslEdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/SeslEdgeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/widget/SeslEdgeEffect;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 283
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    iget-object p0, p0, Landroidx/core/widget/SeslEdgeEffect$1;->this$0:Landroidx/core/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroidx/core/widget/SeslEdgeEffect;->onRelease()V

    :goto_0
    return-void
.end method
