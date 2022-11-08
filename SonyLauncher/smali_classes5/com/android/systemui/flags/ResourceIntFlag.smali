.class public final Lcom/android/systemui/flags/ResourceIntFlag;
.super Ljava/lang/Object;
.source "Flag.kt"

# interfaces
.implements Lcom/android/systemui/flags/ResourceFlag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/flags/ResourceFlag<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0002H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0014\u0010\u0003\u001a\u00020\u0002X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\u0004\u001a\u00020\u0002X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/android/systemui/flags/ResourceIntFlag;",
        "Lcom/android/systemui/flags/ResourceFlag;",
        "",
        "id",
        "resourceId",
        "teamfood",
        "",
        "(IIZ)V",
        "getId",
        "()I",
        "getResourceId",
        "getTeamfood",
        "()Z",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "",
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

.field private final resourceId:I

.field private final teamfood:Z


# direct methods
.method public constructor <init>(II)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/flags/ResourceIntFlag;-><init>(IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "resourceId"    # I
    .param p3, "teamfood"    # Z

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Lcom/android/systemui/flags/ResourceIntFlag;->id:I

    .line 143
    iput p2, p0, Lcom/android/systemui/flags/ResourceIntFlag;->resourceId:I

    .line 144
    iput-boolean p3, p0, Lcom/android/systemui/flags/ResourceIntFlag;->teamfood:Z

    .line 141
    return-void
.end method

.method public synthetic constructor <init>(IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 141
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 144
    const/4 p3, 0x0

    .line 141
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/flags/ResourceIntFlag;-><init>(IIZ)V

    .line 145
    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/flags/ResourceIntFlag;IIZILjava/lang/Object;)Lcom/android/systemui/flags/ResourceIntFlag;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceIntFlag;->getId()I

    move-result p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceIntFlag;->getResourceId()I

    move-result p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceIntFlag;->getTeamfood()Z

    move-result p3

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/flags/ResourceIntFlag;->copy(IIZ)Lcom/android/systemui/flags/ResourceIntFlag;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceIntFlag;->getId()I

    move-result v0

    return v0
.end method

.method public final component2()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceIntFlag;->getResourceId()I

    move-result v0

    return v0
.end method

.method public final component3()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceIntFlag;->getTeamfood()Z

    move-result v0

    return v0
.end method

.method public final copy(IIZ)Lcom/android/systemui/flags/ResourceIntFlag;
    .locals 1

    new-instance v0, Lcom/android/systemui/flags/ResourceIntFlag;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/flags/ResourceIntFlag;-><init>(IIZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/flags/ResourceIntFlag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/flags/ResourceIntFlag;

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceIntFlag;->getId()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/systemui/flags/ResourceIntFlag;->getId()I

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceIntFlag;->getResourceId()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/systemui/flags/ResourceIntFlag;->getResourceId()I

    move-result v4

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceIntFlag;->getTeamfood()Z

    move-result v3

    invoke-virtual {v1}, Lcom/android/systemui/flags/ResourceIntFlag;->getTeamfood()Z

    move-result v1

    if-eq v3, v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getId()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/android/systemui/flags/ResourceIntFlag;->id:I

    return v0
.end method

.method public getResourceId()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/android/systemui/flags/ResourceIntFlag;->resourceId:I

    return v0
.end method

.method public getTeamfood()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/android/systemui/flags/ResourceIntFlag;->teamfood:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceIntFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceIntFlag;->getResourceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceIntFlag;->getTeamfood()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceIntFlag(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceIntFlag;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceIntFlag;->getResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", teamfood="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceIntFlag;->getTeamfood()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
