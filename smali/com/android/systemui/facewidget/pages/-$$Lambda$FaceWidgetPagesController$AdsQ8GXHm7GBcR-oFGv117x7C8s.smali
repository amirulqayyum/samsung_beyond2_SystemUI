.class public final synthetic Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$AdsQ8GXHm7GBcR-oFGv117x7C8s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$AdsQ8GXHm7GBcR-oFGv117x7C8s;->f$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    iput p2, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$AdsQ8GXHm7GBcR-oFGv117x7C8s;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$AdsQ8GXHm7GBcR-oFGv117x7C8s;->f$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    iget p0, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$AdsQ8GXHm7GBcR-oFGv117x7C8s;->f$1:I

    check-cast p1, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->lambda$updateGravity$1$FaceWidgetPagesController(ILcom/android/systemui/facewidget/pages/FaceWidgetPage;)V

    return-void
.end method
