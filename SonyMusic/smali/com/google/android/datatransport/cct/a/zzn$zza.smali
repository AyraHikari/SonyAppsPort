.class final Lcom/google/android/datatransport/cct/a/zzn$zza;
.super Lcom/google/android/datatransport/cct/a/zzt$zza;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/a/zzn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# instance fields
.field private zza:Lcom/google/android/datatransport/cct/a/zzt$zzc;

.field private zzb:Lcom/google/android/datatransport/cct/a/zzt$zzb;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/datatransport/cct/a/zzt$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/datatransport/cct/a/zzt$zzb;)Lcom/google/android/datatransport/cct/a/zzt$zza;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/cct/a/zzn$zza;->zzb:Lcom/google/android/datatransport/cct/a/zzt$zzb;

    return-object p0
.end method

.method public zza(Lcom/google/android/datatransport/cct/a/zzt$zzc;)Lcom/google/android/datatransport/cct/a/zzt$zza;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/a/zzn$zza;->zza:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    return-object p0
.end method

.method public zza()Lcom/google/android/datatransport/cct/a/zzt;
    .locals 4

    .line 3
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzn;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzn$zza;->zza:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    iget-object v2, p0, Lcom/google/android/datatransport/cct/a/zzn$zza;->zzb:Lcom/google/android/datatransport/cct/a/zzt$zzb;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/datatransport/cct/a/zzn;-><init>(Lcom/google/android/datatransport/cct/a/zzt$zzc;Lcom/google/android/datatransport/cct/a/zzt$zzb;Lcom/google/android/datatransport/cct/a/zzm;)V

    return-object v0
.end method
