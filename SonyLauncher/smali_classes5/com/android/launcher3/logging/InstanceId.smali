.class public final Lcom/android/launcher3/logging/InstanceId;
.super Ljava/lang/Object;
.source "InstanceId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/launcher3/logging/InstanceId;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE_ID_MAX:I = 0x100000


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Lcom/android/launcher3/logging/InstanceId$1;

    invoke-direct {v0}, Lcom/android/launcher3/logging/InstanceId$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/logging/InstanceId;->mId:I

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/logging/InstanceId;-><init>(I)V

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/launcher3/logging/InstanceId-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logging/InstanceId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static fakeInstanceId(I)Lcom/android/launcher3/logging/InstanceId;
    .locals 1
    .param p0, "id"    # I

    .line 69
    new-instance v0, Lcom/android/launcher3/logging/InstanceId;

    invoke-direct {v0, p0}, Lcom/android/launcher3/logging/InstanceId;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 79
    instance-of v0, p1, Lcom/android/launcher3/logging/InstanceId;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 80
    return v1

    .line 82
    :cond_0
    iget v0, p0, Lcom/android/launcher3/logging/InstanceId;->mId:I

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/logging/InstanceId;

    iget v2, v2, Lcom/android/launcher3/logging/InstanceId;->mId:I

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getId()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/android/launcher3/logging/InstanceId;->mId:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/android/launcher3/logging/InstanceId;->mId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/launcher3/logging/InstanceId;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 92
    iget v0, p0, Lcom/android/launcher3/logging/InstanceId;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return-void
.end method
