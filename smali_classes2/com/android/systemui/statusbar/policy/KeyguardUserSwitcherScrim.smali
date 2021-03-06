.class public Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;
.super Landroid/graphics/drawable/Drawable;
.source "KeyguardUserSwitcherScrim.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private mAlpha:I

.field private mDarkColor:I

.field private mLayoutWidth:I

.field private mRadialGradientPaint:Landroid/graphics/Paint;

.field private mTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    .line 45
    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mAlpha:I

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mRadialGradientPaint:Landroid/graphics/Paint;

    .line 50
    sget v0, Lcom/android/systemui/R$color;->keyguard_user_switcher_background_gradient_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mDarkColor:I

    return-void
.end method

.method private updatePaint()V
    .locals 12

    .line 98
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mLayoutWidth:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-float v0, v0

    const/high16 v1, 0x40200000    # 2.5f

    mul-float v5, v0, v1

    .line 102
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 103
    :goto_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mRadialGradientPaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/RadialGradient;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 104
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mLayoutWidth:I

    int-to-float v0, v0

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    const/4 v4, 0x0

    const/4 v6, 0x2

    new-array v7, v6, [I

    iget v8, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mDarkColor:I

    .line 106
    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    iget v11, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mAlpha:I

    mul-int/2addr v8, v11

    int-to-float v8, v8

    const/high16 v11, 0x437f0000    # 255.0f

    div-float/2addr v8, v11

    float-to-int v8, v8

    .line 105
    invoke-static {v8, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    aput v8, v7, v2

    aput v2, v7, v1

    new-array v8, v6, [F

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mLayoutWidth:I

    int-to-float p0, p0

    const/high16 v6, 0x3f400000    # 0.75f

    mul-float/2addr p0, v6

    div-float/2addr p0, v5

    .line 108
    invoke-static {v3, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    aput p0, v8, v2

    const/high16 p0, 0x3f800000    # 1.0f

    aput p0, v8, v1

    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    move v3, v0

    move-object v6, v7

    move-object v7, v8

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 103
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 56
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    mul-float v8, v2, v3

    .line 59
    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mTop:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    mul-float/2addr v2, v3

    .line 60
    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mTop:I

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v2, v8

    .line 61
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->scale(FF)V

    if-eqz v0, :cond_1

    .line 62
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v8

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    const/4 v6, 0x0

    if-eqz v0, :cond_2

    .line 63
    iget v0, v1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    goto :goto_2

    :cond_2
    iget v0, v1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr v0, v8

    :goto_2
    move v7, v0

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mRadialGradientPaint:Landroid/graphics/Paint;

    move-object v4, p1

    .line 62
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getAlpha()I
    .locals 0

    .line 75
    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mAlpha:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    :cond_0
    sub-int/2addr p4, p2

    .line 91
    iput p4, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mLayoutWidth:I

    .line 92
    iput p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mTop:I

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->updatePaint()V

    :cond_1
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mAlpha:I

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->updatePaint()V

    .line 70
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
