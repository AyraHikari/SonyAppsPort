.class final Lcom/android/systemui/flags/FlagManager$PerFlagListener;
.super Ljava/lang/Object;
.source "FlagManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/flags/FlagManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PerFlagListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/android/systemui/flags/FlagManager$PerFlagListener;",
        "",
        "id",
        "",
        "listener",
        "Lcom/android/systemui/flags/FlagListenable$Listener;",
        "(ILcom/android/systemui/flags/FlagListenable$Listener;)V",
        "getId",
        "()I",
        "getListener",
        "()Lcom/android/systemui/flags/FlagListenable$Listener;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final id:I

.field private final listener:Lcom/android/systemui/flags/FlagListenable$Listener;


# direct methods
.method public constructor <init>(ILcom/android/systemui/flags/FlagListenable$Listener;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "listener"    # Lcom/android/systemui/flags/FlagListenable$Listener;

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/flags/FlagManager$PerFlagListener;->id:I

    iput-object p2, p0, Lcom/android/systemui/flags/FlagManager$PerFlagListener;->listener:Lcom/android/systemui/flags/FlagListenable$Listener;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/flags/FlagManager$PerFlagListener;ILcom/android/systemui/flags/FlagListenable$Listener;ILjava/lang/Object;)Lcom/android/systemui/flags/FlagManager$PerFlagListener;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/android/systemui/flags/FlagManager$PerFlagListener;->id:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/android/systemui/flags/FlagManager$PerFlagListener;->listener:Lcom/android/systemui/flags/FlagListenable$Listener;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/flags/FlagManager$PerFlagListener;->copy(ILcom/android/systemui/flags/FlagListenable$Listener;)Lcom/android/systemui/flags/FlagManager$PerFlagListener;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/flags/FlagManager$PerFlagListener;->id:I

    return v0
.end method

.method public final component2()Lcom/android/systemui/flags/FlagListenable$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/flags/FlagManager$PerFlagListener;->listener:Lcom/android/systemui/flags/FlagListenable$Listener;

    return-object v0
.end method

.method public final copy(ILcom/android/systemui/flags/FlagListenable$Listener;)Lcom/android/systemui/flags/FlagManager$PerFlagListener;
    .locals 1

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/flags/FlagManager$PerFlagListener;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/flags/FlagManager$PerFlagListener;-><init>(ILcom/android/systemui/flags/FlagListenable$Listener;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/flags/FlagManager$PerFlagListener;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/flags/FlagManager$PerFlagListener;

    iget v3, p0, Lcom/android/systemui/flags/FlagManager$PerFlagListener;->id:I

    iget v4, v1, Lcom/android/systemui/flags/FlagManager$PerFlagListener;->id:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/flags/FlagManager$PerFlagListener;->listener:Lcom/android/systemui/flags/FlagListenable$Listener;

    iget-object v1, v1, Lcom/android/systemui/flags/FlagManager$PerFlagListener;->listener:Lcom/android/systemui/flags/FlagListenable$Listener;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getId()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/android/systemui/flags/FlagManager$PerFlagListener;->id:I

    return v0
.end method

.method public final getListener()Lcom/android/systemui/flags/FlagListenable$Listener;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/systemui/flags/FlagManager$PerFlagListener;->listener:Lcom/android/systemui/flags/FlagListenable$Listener;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/flags/FlagManager$PerFlagListener;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/flags/FlagManager$PerFlagListener;->listener:Lcom/android/systemui/flags/FlagListenable$Listener;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PerFlagListener(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/flags/FlagManager$PerFlagListener;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/flags/FlagManager$PerFlagListener;->listener:Lcom/android/systemui/flags/FlagListenable$Listener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
