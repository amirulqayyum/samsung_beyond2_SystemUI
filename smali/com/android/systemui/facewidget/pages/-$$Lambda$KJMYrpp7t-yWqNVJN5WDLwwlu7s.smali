.class public final synthetic Lcom/android/systemui/facewidget/pages/-$$Lambda$KJMYrpp7t-yWqNVJN5WDLwwlu7s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$KJMYrpp7t-yWqNVJN5WDLwwlu7s;->f$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$KJMYrpp7t-yWqNVJN5WDLwwlu7s;->f$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    check-cast p1, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;)V

    return-void
.end method
