.class public final synthetic Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$2$Ol5Ndy82bzzhYxDFCiA_OKAJUS8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$2$Ol5Ndy82bzzhYxDFCiA_OKAJUS8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$2$Ol5Ndy82bzzhYxDFCiA_OKAJUS8;

    invoke-direct {v0}, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$2$Ol5Ndy82bzzhYxDFCiA_OKAJUS8;-><init>()V

    sput-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$2$Ol5Ndy82bzzhYxDFCiA_OKAJUS8;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$2$Ol5Ndy82bzzhYxDFCiA_OKAJUS8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$2;->lambda$onLockModeChanged$3(Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
