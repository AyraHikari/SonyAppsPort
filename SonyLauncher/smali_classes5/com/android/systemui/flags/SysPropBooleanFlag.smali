.class public final Lcom/android/systemui/flags/SysPropBooleanFlag;
.super Ljava/lang/Object;
.source "Flag.kt"

# interfaces
.implements Lcom/android/systemui/flags/SysPropFlag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/flags/SysPropFlag<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0012\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0002H\u00c6\u0003J\'\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00022\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0004H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0006H\u00d6\u0001R\u0014\u0010\u0007\u001a\u00020\u0002X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u0002X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/android/systemui/flags/SysPropBooleanFlag;",
        "Lcom/android/systemui/flags/SysPropFlag;",
        "",
        "id",
        "",
        "name",
        "",
        "default",
        "(ILjava/lang/String;Z)V",
        "getDefault",
        "()Ljava/lang/Boolean;",
        "getId",
        "()I",
        "getName",
        "()Ljava/lang/String;",
        "teamfood",
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
.field private final default:Z

.field private final id:I

.field private final name:Ljava/lang/String;

.field private final teamfood:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 7

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/flags/SysPropBooleanFlag;-><init>(ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "default"    # Z

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lcom/android/systemui/flags/SysPropBooleanFlag;->id:I

    .line 79
    iput-object p2, p0, Lcom/android/systemui/flags/SysPropBooleanFlag;->name:Ljava/lang/String;

    .line 80
    iput-boolean p3, p0, Lcom/android/systemui/flags/SysPropBooleanFlag;->default:Z

    .line 77
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 77
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 80
    const/4 p3, 0x0

    .line 77
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/flags/SysPropBooleanFlag;-><init>(ILjava/lang/String;Z)V

    .line 84
    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/flags/SysPropBooleanFlag;ILjava/lang/String;ZILjava/lang/Object;)Lcom/android/systemui/flags/SysPropBooleanFlag;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/flags/SysPropBooleanFlag;->getId()I

    move-result p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/flags/SysPropBooleanFlag;->getName()Ljava/lang/String;

    move-result-object p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/flags/SysPropBooleanFlag;->getDefault()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/flags/SysPropBooleanFlag;->copy(ILjava/lang/String;Z)Lcom/android/systemui/flags/SysPropBooleanFlag;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/flags/SysPropBooleanFlag;->getId()I

    move-result v0

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/flags/SysPropBooleanFlag;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/flags/SysPropBooleanFlag;->getDefault()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final copy(ILjava/lang/String;Z)Lcom/android/systemui/flags/SysPropBooleanFlag;
    .locals 1

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/flags/SysPropBooleanFlag;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/flags/SysPropBooleanFlag;-><init>(ILjava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/flags/SysPropBooleanFlag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/flags/SysPropBooleanFlag;

    invoke-virtual {p0}, Lcom/android/systemui/flags/SysPropBooleanFlag;->getId()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/systemui/flags/SysPropBooleanFlag;->getId()I

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/flags/SysPropBooleanFlag;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/systemui/flags/SysPropBooleanFlag;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/flags/SysPropBooleanFlag;->getDefault()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1}, Lcom/android/systemui/flags/SysPropBooleanFlag;->getDefault()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v3, v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getDefault()Ljava/lang/Boolean;
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/android/systemui/flags/SysPropBooleanFlag;->default:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefault()Ljava/lang/Object;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/flags/SysPropBooleanFlag;->getDefault()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/android/systemui/flags/SysPropBooleanFlag;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/systemui/flags/SysPropBooleanFlag;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamfood()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/android/systemui/flags/SysPropBooleanFlag;->teamfood:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/flags/SysPropBooleanFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/flags/SysPropBooleanFlag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/flags/SysPropBooleanFlag;->getDefault()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SysPropBooleanFlag(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/flags/SysPropBooleanFlag;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/flags/SysPropBooleanFlag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", default="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/flags/SysPropBooleanFlag;->getDefault()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

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
