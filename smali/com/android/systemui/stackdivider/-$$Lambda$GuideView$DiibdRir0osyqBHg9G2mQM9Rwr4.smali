.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$GuideView$DiibdRir0osyqBHg9G2mQM9Rwr4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/stackdivider/GuideView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/GuideView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideView$DiibdRir0osyqBHg9G2mQM9Rwr4;->f$0:Lcom/android/systemui/stackdivider/GuideView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideView$DiibdRir0osyqBHg9G2mQM9Rwr4;->f$0:Lcom/android/systemui/stackdivider/GuideView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/GuideView;->lambda$show$0$GuideView(Landroid/animation/ValueAnimator;)V

    return-void
.end method
