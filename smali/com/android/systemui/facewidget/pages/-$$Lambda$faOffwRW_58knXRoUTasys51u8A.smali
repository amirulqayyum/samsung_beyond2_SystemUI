.class public final synthetic Lcom/android/systemui/facewidget/pages/-$$Lambda$faOffwRW_58knXRoUTasys51u8A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$faOffwRW_58knXRoUTasys51u8A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$faOffwRW_58knXRoUTasys51u8A;

    invoke-direct {v0}, Lcom/android/systemui/facewidget/pages/-$$Lambda$faOffwRW_58knXRoUTasys51u8A;-><init>()V

    sput-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$faOffwRW_58knXRoUTasys51u8A;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$faOffwRW_58knXRoUTasys51u8A;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->onDensityOrFontScaleChanged()V

    return-void
.end method
