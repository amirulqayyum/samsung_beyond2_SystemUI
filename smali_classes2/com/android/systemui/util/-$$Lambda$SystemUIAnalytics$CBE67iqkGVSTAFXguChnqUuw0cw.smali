.class public final synthetic Lcom/android/systemui/util/-$$Lambda$SystemUIAnalytics$CBE67iqkGVSTAFXguChnqUuw0cw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/util/-$$Lambda$SystemUIAnalytics$CBE67iqkGVSTAFXguChnqUuw0cw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/-$$Lambda$SystemUIAnalytics$CBE67iqkGVSTAFXguChnqUuw0cw;

    invoke-direct {v0}, Lcom/android/systemui/util/-$$Lambda$SystemUIAnalytics$CBE67iqkGVSTAFXguChnqUuw0cw;-><init>()V

    sput-object v0, Lcom/android/systemui/util/-$$Lambda$SystemUIAnalytics$CBE67iqkGVSTAFXguChnqUuw0cw;->INSTANCE:Lcom/android/systemui/util/-$$Lambda$SystemUIAnalytics$CBE67iqkGVSTAFXguChnqUuw0cw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/reflect/Field;

    invoke-static {p1}, Lcom/android/systemui/util/SystemUIAnalytics;->lambda$prepareIdMap$0(Ljava/lang/reflect/Field;)Z

    move-result p0

    return p0
.end method
