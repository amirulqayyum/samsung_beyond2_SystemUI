.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$VxMdsy8x2THf5GeY-aPHDLf6HIM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecQsTransitionAnimator;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$VxMdsy8x2THf5GeY-aPHDLf6HIM;->f$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    iput-boolean p2, p0, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$VxMdsy8x2THf5GeY-aPHDLf6HIM;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$VxMdsy8x2THf5GeY-aPHDLf6HIM;->f$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    iget-boolean p0, p0, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$VxMdsy8x2THf5GeY-aPHDLf6HIM;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->lambda$showQsPanel$1$SecQsTransitionAnimator(Z)V

    return-void
.end method
