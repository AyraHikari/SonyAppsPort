.class final Lcom/google/android/gms/measurement/internal/zzia;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzad;

.field private final synthetic zzb:I

.field private final synthetic zzc:J

.field private final synthetic zzd:Z

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzhe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhe;Lcom/google/android/gms/measurement/internal/zzad;IJZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzia;->zze:Lcom/google/android/gms/measurement/internal/zzhe;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zzad;

    iput p3, p0, Lcom/google/android/gms/measurement/internal/zzia;->zzb:I

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzia;->zzc:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzia;->zzd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zze:Lcom/google/android/gms/measurement/internal/zzhe;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zza(Lcom/google/android/gms/measurement/internal/zzad;)V

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzia;->zze:Lcom/google/android/gms/measurement/internal/zzhe;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zzad;

    iget v4, p0, Lcom/google/android/gms/measurement/internal/zzia;->zzb:I

    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/zzia;->zzc:J

    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/zzia;->zzd:Z

    const/4 v7, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zza(Lcom/google/android/gms/measurement/internal/zzhe;Lcom/google/android/gms/measurement/internal/zzad;IJZZ)V

    return-void
.end method
