.class public Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;
.super Ljava/lang/Object;
.source "WorkspaceCellCenterRequest.java"

# interfaces
.implements Lcom/android/launcher3/testing/TestInformationRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/testing/WorkspaceCellCenterRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final cellX:I

.field public final cellY:I

.field public final spanX:I

.field public final spanY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest$1;

    invoke-direct {v0}, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->cellX:I

    .line 60
    iput p2, p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->cellY:I

    .line 61
    iput p3, p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->spanX:I

    .line 62
    iput p4, p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->spanY:I

    .line 63
    return-void
.end method

.method synthetic constructor <init>(IIIILcom/android/launcher3/testing/WorkspaceCellCenterRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;-><init>(IIII)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;-><init>(IIII)V

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/launcher3/testing/WorkspaceCellCenterRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static builder()Lcom/android/launcher3/testing/WorkspaceCellCenterRequest$Builder;
    .locals 2

    .line 75
    new-instance v0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest$Builder;-><init>(Lcom/android/launcher3/testing/WorkspaceCellCenterRequest$Builder-IA;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getRequestName()Ljava/lang/String;
    .locals 1

    .line 80
    const-string v0, "workspace-cell-center"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 38
    iget v0, p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->cellX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v0, p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->cellY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v0, p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->spanX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->spanY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    return-void
.end method
