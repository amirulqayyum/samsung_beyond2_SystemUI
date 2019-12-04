.class public Landroidx/core/view/DragStartHelper;
.super Ljava/lang/Object;
.source "DragStartHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/DragStartHelper$OnDragStartListener;
    }
.end annotation


# instance fields
.field private mDragging:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private final mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 170
    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

    invoke-interface {v0, p1, p0}, Landroidx/core/view/DragStartHelper$OnDragStartListener;->onDragStart(Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z

    move-result p0

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 129
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 130
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 131
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    const/4 p1, 0x3

    if-eq v2, p1, :cond_4

    goto :goto_0

    :cond_0
    const/16 v2, 0x2002

    .line 138
    invoke-static {p2, v2}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p2

    and-int/2addr p2, v4

    if-nez p2, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    iget-boolean p2, p0, Landroidx/core/view/DragStartHelper;->mDragging:Z

    if-eqz p2, :cond_2

    goto :goto_0

    .line 147
    :cond_2
    iget p2, p0, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    if-ne p2, v0, :cond_3

    iget p2, p0, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    if-ne p2, v1, :cond_3

    goto :goto_0

    .line 151
    :cond_3
    iput v0, p0, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    .line 152
    iput v1, p0, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    .line 153
    iget-object p2, p0, Landroidx/core/view/DragStartHelper;->mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

    invoke-interface {p2, p1, p0}, Landroidx/core/view/DragStartHelper$OnDragStartListener;->onDragStart(Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/core/view/DragStartHelper;->mDragging:Z

    .line 154
    iget-boolean p0, p0, Landroidx/core/view/DragStartHelper;->mDragging:Z

    return p0

    .line 158
    :cond_4
    iput-boolean v3, p0, Landroidx/core/view/DragStartHelper;->mDragging:Z

    goto :goto_0

    .line 133
    :cond_5
    iput v0, p0, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    .line 134
    iput v1, p0, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    :cond_6
    :goto_0
    return v3
.end method
