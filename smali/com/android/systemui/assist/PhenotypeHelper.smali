.class Lcom/android/systemui/assist/PhenotypeHelper;
.super Ljava/lang/Object;
.source "PhenotypeHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method addOnPropertiesChangedListener(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .locals 0

    const-string/jumbo p0, "systemui"

    .line 48
    invoke-static {p0, p1, p2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    const-string/jumbo p0, "systemui"

    .line 43
    invoke-static {p0, p1, p2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method getInt(Ljava/lang/String;I)I
    .locals 0

    const-string/jumbo p0, "systemui"

    .line 34
    invoke-static {p0, p1, p2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method getLong(Ljava/lang/String;J)J
    .locals 0

    const-string/jumbo p0, "systemui"

    .line 30
    invoke-static {p0, p1, p2, p3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string/jumbo p0, "systemui"

    .line 39
    invoke-static {p0, p1, p2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method