.class public final Lcom/google/android/gms/internal/measurement/zzcd$zzh$zzb;
.super Lcom/google/android/gms/internal/measurement/zzhv$zzb;
.source "com.google.android.gms:play-services-measurement@@17.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzji;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzcd$zzh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhv$zzb<",
        "Lcom/google/android/gms/internal/measurement/zzcd$zzh;",
        "Lcom/google/android/gms/internal/measurement/zzcd$zzh$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzji;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzh;->zzb()Lcom/google/android/gms/internal/measurement/zzcd$zzh;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzhv;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzce;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzh$zzb;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzcd$zzd$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzh$zzb;
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzb:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzu()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzb:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zzh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzcd$zzd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzh;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzh;Lcom/google/android/gms/internal/measurement/zzcd$zzd;)V

    return-object p0
.end method
