.class public final Lcom/android/systemui/plugins/VolumeDialogController$State;
.super Ljava/lang/Object;
.source "VolumeDialogController.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/VolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# static fields
.field public static NO_ACTIVE_STREAM:I = -0x1

.field public static final VERSION:I = 0x1


# instance fields
.field public activeStream:I

.field public disallowAlarms:Z

.field public disallowMedia:Z

.field public disallowRinger:Z

.field public disallowSystem:Z

.field public dualAudio:Z

.field public effectsSuppressor:Landroid/content/ComponentName;

.field public effectsSuppressorName:Ljava/lang/String;

.field public fixedSCOVolume:Z

.field public fromKey:Z

.field public remoteMic:Z

.field public ringerModeExternal:I

.field public ringerModeInternal:I

.field public final states:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/plugins/VolumeDialogController$StreamState;",
            ">;"
        }
    .end annotation
.end field

.field public zenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    .line 127
    sget v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->NO_ACTIVE_STREAM:I

    iput v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    return-void
.end method

.method private static sep(Ljava/lang/StringBuilder;I)V
    .locals 2

    if-lez p1, :cond_0

    const/16 v0, 0xa

    .line 202
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    const/16 v1, 0x20

    .line 204
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x2c

    .line 207
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method


# virtual methods
.method public copy()Lcom/android/systemui/plugins/VolumeDialogController$State;
    .locals 5

    .line 141
    new-instance v0, Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-direct {v0}, Lcom/android/systemui/plugins/VolumeDialogController$State;-><init>()V

    const/4 v1, 0x0

    .line 142
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 143
    iget-object v2, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    invoke-virtual {v4}, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->copy()Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_0
    iget v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeExternal:I

    iput v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeExternal:I

    .line 146
    iget v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    iput v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 147
    iget v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    iput v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    .line 148
    iget-object v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {v1}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    .line 152
    iget v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    iput v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    .line 153
    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowAlarms:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowAlarms:Z

    .line 154
    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    .line 155
    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowSystem:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowSystem:Z

    .line 156
    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    .line 158
    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->dualAudio:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->dualAudio:Z

    .line 159
    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->fromKey:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->fromKey:Z

    .line 160
    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->fixedSCOVolume:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->fixedSCOVolume:Z

    .line 161
    iget-boolean p0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->remoteMic:Z

    iput-boolean p0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->remoteMic:Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/VolumeDialogController$State;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez p1, :cond_0

    .line 173
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    :cond_0
    const/4 v1, 0x0

    .line 174
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    if-lez v1, :cond_1

    .line 176
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 179
    iget-object v3, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 180
    invoke-static {v2}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    iget-boolean v2, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v2, :cond_2

    const-string v2, " [MUTED]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_2
    iget-boolean v2, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-eqz v2, :cond_3

    const-string v2, " [DYNAMIC]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_4
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v1, "ringerModeExternal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeExternal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v1, "ringerModeInternal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v1, "zenMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v1, "effectsSuppressor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v1, "effectsSuppressorName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v1, "activeStream:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v1, "disallowAlarms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowAlarms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 193
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v1, "disallowMedia:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 194
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v1, "disallowSystem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowSystem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 195
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v1, "disallowRinger:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-lez p1, :cond_5

    .line 196
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    :cond_5
    const/16 p0, 0x7d

    .line 197
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
