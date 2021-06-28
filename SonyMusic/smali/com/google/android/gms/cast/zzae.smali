.class public final Lcom/google/android/gms/cast/zzae;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/zzae;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzcw:Lcom/google/android/gms/cast/zzac;

.field private final zzcx:Lcom/google/android/gms/cast/zzac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/google/android/gms/cast/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzad;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/zzae;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/zzac;Lcom/google/android/gms/cast/zzac;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/cast/zzae;->zzcw:Lcom/google/android/gms/cast/zzac;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/cast/zzae;->zzcx:Lcom/google/android/gms/cast/zzac;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 19
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/zzae;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 21
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/zzae;

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/cast/zzae;->zzcw:Lcom/google/android/gms/cast/zzac;

    iget-object v3, p1, Lcom/google/android/gms/cast/zzae;->zzcw:Lcom/google/android/gms/cast/zzac;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/zzae;->zzcx:Lcom/google/android/gms/cast/zzac;

    iget-object p1, p1, Lcom/google/android/gms/cast/zzae;->zzcx:Lcom/google/android/gms/cast/zzac;

    .line 23
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 25
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/cast/zzae;->zzcw:Lcom/google/android/gms/cast/zzac;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/zzae;->zzcx:Lcom/google/android/gms/cast/zzac;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/cast/zzae;->zzcw:Lcom/google/android/gms/cast/zzac;

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 10
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/cast/zzae;->zzcx:Lcom/google/android/gms/cast/zzac;

    const/4 v3, 0x3

    .line 14
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 15
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
