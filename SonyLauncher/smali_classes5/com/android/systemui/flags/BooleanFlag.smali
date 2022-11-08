.class public final Lcom/android/systemui/flags/BooleanFlag;
.super Ljava/lang/Object;
.source "Flag.kt"

# interfaces
.implements Lcom/android/systemui/flags/ParcelableFlag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/flags/BooleanFlag$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/flags/ParcelableFlag<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u001e2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001eB\u000f\u0008\u0012\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B#\u0008\u0007\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0002H\u00c6\u0003J\'\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00022\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u0007H\u0016R\u0014\u0010\u0008\u001a\u00020\u0002X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\t\u001a\u00020\u0002X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/android/systemui/flags/BooleanFlag;",
        "Lcom/android/systemui/flags/ParcelableFlag;",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "id",
        "",
        "default",
        "teamfood",
        "(IZZ)V",
        "getDefault",
        "()Ljava/lang/Boolean;",
        "getId",
        "()I",
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
        "writeToParcel",
        "",
        "flags",
        "Companion",
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


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/systemui/flags/BooleanFlag;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/android/systemui/flags/BooleanFlag$Companion;


# instance fields
.field private final default:Z

.field private final id:I

.field private final teamfood:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/flags/BooleanFlag$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/flags/BooleanFlag;->Companion:Lcom/android/systemui/flags/BooleanFlag$Companion;

    .line 54
    new-instance v0, Lcom/android/systemui/flags/BooleanFlag$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/android/systemui/flags/BooleanFlag$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/android/systemui/flags/BooleanFlag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "default"    # Z
    .param p3, "teamfood"    # Z

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/android/systemui/flags/BooleanFlag;->id:I

    .line 48
    iput-boolean p2, p0, Lcom/android/systemui/flags/BooleanFlag;->default:Z

    .line 49
    iput-boolean p3, p0, Lcom/android/systemui/flags/BooleanFlag;->teamfood:Z

    .line 46
    return-void
.end method

.method public synthetic constructor <init>(IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 46
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 48
    move p2, v0

    .line 46
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 49
    move p3, v0

    .line 46
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZZ)V

    .line 69
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 60
    nop

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 60
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/flags/BooleanFlag;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/flags/BooleanFlag;IZZILjava/lang/Object;)Lcom/android/systemui/flags/BooleanFlag;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->getId()I

    move-result p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->getDefault()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->getTeamfood()Z

    move-result p3

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/flags/BooleanFlag;->copy(IZZ)Lcom/android/systemui/flags/BooleanFlag;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->getId()I

    move-result v0

    return v0
.end method

.method public final component2()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->getDefault()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final component3()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->getTeamfood()Z

    move-result v0

    return v0
.end method

.method public final copy(IZZ)Lcom/android/systemui/flags/BooleanFlag;
    .locals 1

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZZ)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 46
    move-object v0, p0

    check-cast v0, Lcom/android/systemui/flags/ParcelableFlag;

    invoke-static {v0}, Lcom/android/systemui/flags/ParcelableFlag$DefaultImpls;->describeContents(Lcom/android/systemui/flags/ParcelableFlag;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/flags/BooleanFlag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/flags/BooleanFlag;

    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->getId()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/systemui/flags/BooleanFlag;->getId()I

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->getDefault()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1}, Lcom/android/systemui/flags/BooleanFlag;->getDefault()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->getTeamfood()Z

    move-result v3

    invoke-virtual {v1}, Lcom/android/systemui/flags/BooleanFlag;->getTeamfood()Z

    move-result v1

    if-eq v3, v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getDefault()Ljava/lang/Boolean;
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/android/systemui/flags/BooleanFlag;->default:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefault()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->getDefault()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/android/systemui/flags/BooleanFlag;->id:I

    return v0
.end method

.method public getTeamfood()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/flags/BooleanFlag;->teamfood:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->getDefault()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->getTeamfood()Z

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

    const-string v1, "BooleanFlag(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", default="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->getDefault()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", teamfood="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->getTeamfood()Z

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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->getDefault()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 68
    return-void
.end method
