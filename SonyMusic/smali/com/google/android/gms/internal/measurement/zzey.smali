.class final Lcom/google/android/gms/internal/measurement/zzey;
.super Lcom/google/android/gms/internal/measurement/zzew;
.source "com.google.android.gms:play-services-measurement-impl@@17.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzew<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient zza:I

.field private final transient zzb:I

.field private final synthetic zzc:Lcom/google/android/gms/internal/measurement/zzew;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzew;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzey;->zzc:Lcom/google/android/gms/internal/measurement/zzew;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzew;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzey;->zza:I

    .line 3
    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzey;->zzb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzey;->zzb:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzdw;->zza(II)I

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzey;->zzc:Lcom/google/android/gms/internal/measurement/zzew;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzey;->zza:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzey;->zzb:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzew;->zza(II)Lcom/google/android/gms/internal/measurement/zzew;

    move-result-object p1

    return-object p1
.end method

.method public final zza(II)Lcom/google/android/gms/internal/measurement/zzew;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/measurement/zzew<",
            "TE;>;"
        }
    .end annotation

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzey;->zzb:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzdw;->zza(III)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzey;->zzc:Lcom/google/android/gms/internal/measurement/zzew;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzey;->zza:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzew;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzew;

    return-object p1
.end method

.method final zzd()[Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzey;->zzc:Lcom/google/android/gms/internal/measurement/zzew;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzex;->zzd()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zze()I
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzey;->zzc:Lcom/google/android/gms/internal/measurement/zzew;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzex;->zze()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzey;->zza:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzf()I
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzey;->zzc:Lcom/google/android/gms/internal/measurement/zzew;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzex;->zze()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzey;->zza:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzey;->zzb:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzg()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
