.class Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$6;
.super Ljava/lang/Object;
.source "AnimationBuilder.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->buildParabolaAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$6;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 267
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$6;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget-object v1, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    iget v2, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->dx:F

    iget v0, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    add-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$6;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget v4, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    iget v3, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    sub-float/2addr v4, v3

    mul-float/2addr v0, v4

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 269
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$6;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    iget p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->dy:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    add-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method
