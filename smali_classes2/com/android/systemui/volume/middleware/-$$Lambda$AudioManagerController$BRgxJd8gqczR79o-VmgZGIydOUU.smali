.class public final synthetic Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$BRgxJd8gqczR79o-VmgZGIydOUU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Z

.field private final synthetic f$1:Ljava/util/List;

.field private final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ZLjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$BRgxJd8gqczR79o-VmgZGIydOUU;->f$0:Z

    iput-object p2, p0, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$BRgxJd8gqczR79o-VmgZGIydOUU;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$BRgxJd8gqczR79o-VmgZGIydOUU;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$BRgxJd8gqczR79o-VmgZGIydOUU;->f$0:Z

    iget-object v1, p0, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$BRgxJd8gqczR79o-VmgZGIydOUU;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$BRgxJd8gqczR79o-VmgZGIydOUU;->f$2:Ljava/util/List;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/volume/middleware/AudioManagerController;->lambda$apply$0(ZLjava/util/List;Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)V

    return-void
.end method
