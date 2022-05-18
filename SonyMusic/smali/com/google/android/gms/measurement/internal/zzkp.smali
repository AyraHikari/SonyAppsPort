.class public Lcom/google/android/gms/measurement/internal/zzkp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.5.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzgw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/internal/zzkp$zza;
    }
.end annotation


# static fields
.field private static volatile zza:Lcom/google/android/gms/measurement/internal/zzkp;


# instance fields
.field private zzb:Lcom/google/android/gms/measurement/internal/zzfv;

.field private zzc:Lcom/google/android/gms/measurement/internal/zzfa;

.field private zzd:Lcom/google/android/gms/measurement/internal/zzac;

.field private zze:Lcom/google/android/gms/measurement/internal/zzfh;

.field private zzf:Lcom/google/android/gms/measurement/internal/zzkl;

.field private zzg:Lcom/google/android/gms/measurement/internal/zzo;

.field private final zzh:Lcom/google/android/gms/measurement/internal/zzkt;

.field private zzi:Lcom/google/android/gms/measurement/internal/zzil;

.field private zzj:Lcom/google/android/gms/measurement/internal/zzjv;

.field private final zzk:Lcom/google/android/gms/measurement/internal/zzgb;

.field private zzl:Z

.field private zzm:Z

.field private zzn:J

.field private zzo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private zzp:I

.field private zzq:I

.field private zzr:Z

.field private zzs:Z

.field private zzt:Z

.field private zzu:Ljava/nio/channels/FileLock;

.field private zzv:Ljava/nio/channels/FileChannel;

.field private zzw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzy:J

.field private final zzz:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzku;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzkp;-><init>(Lcom/google/android/gms/measurement/internal/zzku;Lcom/google/android/gms/measurement/internal/zzgb;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzku;Lcom/google/android/gms/measurement/internal/zzgb;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 16
    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzl:Z

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzku;->zza:Landroid/content/Context;

    const/4 v0, 0x0

    .line 19
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzae;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p2

    .line 21
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    const-wide/16 v0, -0x1

    .line 22
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzy:J

    .line 24
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzkt;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzkt;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    .line 26
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkm;->zzak()V

    .line 27
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzh:Lcom/google/android/gms/measurement/internal/zzkt;

    .line 29
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzfa;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    .line 31
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkm;->zzak()V

    .line 32
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzc:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 34
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzfv;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    .line 36
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkm;->zzak()V

    .line 37
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzb:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 38
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzz:Ljava/util/Map;

    .line 40
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object p2

    .line 41
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzko;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzko;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;Lcom/google/android/gms/measurement/internal/zzku;)V

    .line 42
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/nio/channels/FileChannel;)I
    .locals 5

    .line 2348
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 2349
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    .line 2355
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 2356
    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 2357
    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-eq p1, v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 2361
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v1

    .line 2362
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    const-string v2, "Unexpected data length. Bytes read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return v0

    .line 2364
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2365
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2369
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v1

    .line 2370
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    const-string v2, "Failed to read from channel"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v0

    .line 2351
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    .line 2352
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string v1, "Bad channel to read from"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzn;Lcom/google/android/gms/measurement/internal/zzf;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;
    .locals 8

    .line 2990
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzad;->zza:Lcom/google/android/gms/measurement/internal/zzad;

    .line 2991
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2992
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v1

    .line 2993
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2994
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 2995
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzw:Ljava/lang/String;

    .line 2996
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzad;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzad;->zzb(Lcom/google/android/gms/measurement/internal/zzad;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_4

    .line 2998
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzf;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-direct {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzgb;Ljava/lang/String;)V

    .line 2999
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3000
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    .line 3001
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3002
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzad;->zze()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3003
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzad;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)V

    .line 3004
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzad;->zzc()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3005
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zze(Ljava/lang/String;)V

    goto :goto_0

    .line 3006
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzz()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)V

    .line 3007
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zze(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p3, 0x1

    goto :goto_2

    .line 3009
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3010
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    .line 3011
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3012
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzad;->zzc()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3013
    :cond_5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 3014
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zze(Ljava/lang/String;)V

    .line 3015
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 3016
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object p3

    .line 3017
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {p3, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 3018
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzad;->zze()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 3019
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzad;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)V

    goto :goto_1

    .line 3020
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzz()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)V

    :cond_7
    :goto_1
    const/4 p3, 0x1

    goto :goto_2

    :cond_8
    const/4 p3, 0x0

    .line 3022
    :goto_2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3023
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 3025
    :cond_9
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3026
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zzc(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 3028
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznq;->zzb()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3029
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 3030
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzat;->zzbj:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3031
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3032
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zzd(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 3034
    :cond_b
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzk:Ljava/lang/String;

    .line 3035
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 3036
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzk:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zzf(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 3038
    :cond_c
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zze:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-eqz v0, :cond_d

    .line 3039
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zze:J

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzd(J)V

    const/4 p3, 0x1

    .line 3041
    :cond_d
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    .line 3042
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3043
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zzg(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 3045
    :cond_e
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzm()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-eqz v0, :cond_f

    .line 3046
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzc(J)V

    const/4 p3, 0x1

    .line 3048
    :cond_f
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 3049
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zzh(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 3051
    :cond_10
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzf:J

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzp()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-eqz v0, :cond_11

    .line 3052
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzf:J

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zze(J)V

    const/4 p3, 0x1

    .line 3054
    :cond_11
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzr()Z

    move-result v2

    if-eq v0, v2, :cond_12

    .line 3055
    iget-boolean p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Z)V

    const/4 p3, 0x1

    .line 3057
    :cond_12
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzg:Ljava/lang/String;

    .line 3058
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 3059
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzg:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zzi(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 3062
    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 3063
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzat;->zzcf:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 3064
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzl:J

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzae()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-eqz v0, :cond_14

    .line 3065
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzl:J

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzp(J)V

    const/4 p3, 0x1

    .line 3067
    :cond_14
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzo:Z

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()Z

    move-result v2

    if-eq v0, v2, :cond_15

    .line 3068
    iget-boolean p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzo:Z

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(Z)V

    const/4 p3, 0x1

    .line 3070
    :cond_15
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzp:Z

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzag()Z

    move-result v2

    if-eq v0, v2, :cond_16

    .line 3071
    iget-boolean p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzp:Z

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zzc(Z)V

    const/4 p3, 0x1

    .line 3073
    :cond_16
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/lang/Boolean;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzah()Ljava/lang/Boolean;

    move-result-object v2

    if-eq v0, v2, :cond_17

    .line 3074
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/Boolean;)V

    const/4 p3, 0x1

    .line 3076
    :cond_17
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzt:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_18

    .line 3077
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzq()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_18

    .line 3078
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzt:J

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzf(J)V

    const/4 p3, 0x1

    :cond_18
    if-eqz p3, :cond_19

    .line 3081
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    :cond_19
    return-object p2
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzkp;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzkp;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/google/android/gms/measurement/internal/zzkp;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzkp;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzku;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzku;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkp;-><init>(Lcom/google/android/gms/measurement/internal/zzku;)V

    .line 10
    sput-object p0, Lcom/google/android/gms/measurement/internal/zzkp;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 11
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 12
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzkp;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzad;)Ljava/lang/String;
    .locals 2

    .line 874
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 875
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 876
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 877
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzad;->zze()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 878
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzz()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;ILjava/lang/String;)V
    .locals 4

    .line 1862
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1863
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const-string v2, "_err"

    .line 1864
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1867
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzm()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v0

    const-string v1, "_err"

    .line 1868
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v0

    int-to-long v1, p1

    .line 1869
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object p1

    .line 1870
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    .line 1871
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzm()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v0

    const-string v1, "_ev"

    .line 1872
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v0

    .line 1873
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object p2

    .line 1874
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    .line 1875
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;)V
    .locals 3

    .line 1854
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1855
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1856
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1858
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;JZ)V
    .locals 11

    const-string v0, "_lte"

    if-eqz p4, :cond_0

    const-string v0, "_se"

    .line 1789
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzky;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1790
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzky;->zze:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_0

    .line 1796
    :cond_1
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzky;

    .line 1797
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto"

    .line 1798
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    .line 1799
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzky;->zze:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 1800
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    add-long/2addr v9, p2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzky;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_1

    .line 1791
    :cond_2
    :goto_0
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzky;

    .line 1792
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto"

    .line 1793
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 1794
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    .line 1795
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzky;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 1801
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzj()Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v1

    .line 1802
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v1

    .line 1803
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 1804
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzky;->zze:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 1805
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v1

    .line 1806
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    const/4 v2, 0x0

    .line 1809
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 1811
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzk;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    .line 1814
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzk;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_4
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_6

    .line 1816
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzky;)Z

    const-string p1, "lifetime"

    if-eqz p4, :cond_5

    const-string p1, "session-scoped"

    .line 1821
    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p2

    .line 1822
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p2

    const-string p3, "Updated engagement user property. scope, value"

    iget-object p4, v8, Lcom/google/android/gms/measurement/internal/zzky;->zze:Ljava/lang/Object;

    .line 1823
    invoke-virtual {p2, p3, p1, p4}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzf;)V
    .locals 10

    .line 1966
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 1967
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznq;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1968
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 1969
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzat;->zzbj:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1970
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1971
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1972
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1973
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 1975
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1976
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1977
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 1980
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 1981
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzf;)Ljava/lang/String;

    move-result-object v0

    .line 1982
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1984
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v1

    .line 1985
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1987
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc()Lcom/google/android/gms/measurement/internal/zzfv;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzca$zzb;

    move-result-object v1

    const/4 v2, 0x0

    .line 1989
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc()Lcom/google/android/gms/measurement/internal/zzfv;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_2

    .line 1990
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1991
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "If-Modified-Since"

    .line 1992
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v1

    goto :goto_0

    :cond_2
    move-object v6, v2

    :goto_0
    const/4 v1, 0x1

    .line 1993
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzr:Z

    .line 1994
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzd()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v2

    .line 1995
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzkq;

    invoke-direct {v7, p0}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    .line 1997
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 1998
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkm;->zzaj()V

    .line 1999
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2000
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzfe;

    const/4 v5, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzfe;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzfc;)V

    .line 2002
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2006
    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v1

    .line 2007
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    .line 2008
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 2009
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzkp;Lcom/google/android/gms/measurement/internal/zzku;)V
    .locals 0

    .line 3181
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzku;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzku;)V
    .locals 3

    .line 45
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 48
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzac;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzac;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkm;->zzak()V

    .line 51
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzd:Lcom/google/android/gms/measurement/internal/zzac;

    .line 53
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzb:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzaa;)V

    .line 56
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzjv;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzjv;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkm;->zzak()V

    .line 59
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzj:Lcom/google/android/gms/measurement/internal/zzjv;

    .line 61
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzo;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzo;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    .line 63
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkm;->zzak()V

    .line 64
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzg:Lcom/google/android/gms/measurement/internal/zzo;

    .line 66
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzil;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzil;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    .line 68
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkm;->zzak()V

    .line 69
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzi:Lcom/google/android/gms/measurement/internal/zzil;

    .line 71
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    .line 73
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkm;->zzak()V

    .line 74
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzf:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 76
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    .line 77
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zze:Lcom/google/android/gms/measurement/internal/zzfh;

    .line 78
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzp:I

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzq:I

    if-eq p1, v0, :cond_0

    .line 80
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string v0, "Not all upload components initialized"

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzp:I

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzq:I

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 84
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzl:Z

    return-void
.end method

.method private final zza(ILjava/nio/channels/FileChannel;)Z
    .locals 6

    .line 2372
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 2373
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 2379
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2380
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2381
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v2, 0x0

    .line 2382
    :try_start_0
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 2384
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object p1

    .line 2385
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzat;->zzbt:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-gt p1, v4, :cond_1

    .line 2386
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 2387
    :cond_1
    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    .line 2388
    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 2389
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 2391
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v1

    .line 2392
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return p1

    :catch_0
    move-exception p1

    .line 2396
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p2

    .line 2397
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p2

    const-string v1, "Failed to write to channel"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 2375
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    .line 2376
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string p2, "Bad channel to read from"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Z
    .locals 4

    const-string v0, "_e"

    .line 1826
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1827
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 1829
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    .line 1830
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v1, "_sc"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 1831
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v0

    .line 1833
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v3, "_pc"

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 1834
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    .line 1835
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1836
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private final zza(Ljava/lang/String;J)Z
    .locals 42

    move-object/from16 v1, p0

    .line 1089
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zze()V

    .line 1090
    :try_start_0
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzkp$zza;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;Lcom/google/android/gms/measurement/internal/zzko;)V

    .line 1091
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v4

    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzy:J

    .line 1093
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 1095
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkm;->zzaj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const-wide/16 v8, -0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 1097
    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzac;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 1098
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v13, :cond_3

    cmp-long v13, v5, v8

    if-eqz v13, :cond_0

    .line 1100
    :try_start_2
    new-array v13, v10, [Ljava/lang/String;

    .line 1101
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v11

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v12
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v8, v3

    goto/16 :goto_43

    :catch_0
    move-exception v0

    move-object v7, v3

    move-object v8, v7

    :goto_0
    move-object v3, v0

    goto/16 :goto_7

    .line 1102
    :cond_0
    :try_start_3
    new-array v13, v12, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v11
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_1
    cmp-long v14, v5, v8

    if-eqz v14, :cond_1

    :try_start_4
    const-string v14, "rowid <= ? and "
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_1
    :try_start_5
    const-string v14, ""

    .line 1104
    :goto_2
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit16 v7, v7, 0x94

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1105
    invoke-virtual {v15, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1106
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v7, :cond_2

    if-eqz v3, :cond_c

    .line 1108
    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto/16 :goto_8

    .line 1110
    :cond_2
    :try_start_8
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1111
    :try_start_9
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1112
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v22, v3

    move-object v3, v7

    move-object v7, v13

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v8, v3

    goto :goto_0

    :cond_3
    cmp-long v3, v5, v8

    if-eqz v3, :cond_4

    .line 1115
    :try_start_a
    new-array v3, v10, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v3, v11

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v12

    goto :goto_3

    .line 1116
    :cond_4
    new-array v3, v12, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v3, v11

    :goto_3
    cmp-long v7, v5, v8

    if-eqz v7, :cond_5

    const-string v7, " and rowid <= ?"

    goto :goto_4

    :cond_5
    const-string v7, ""

    .line 1118
    :goto_4
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x54

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " order by rowid limit 1;"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1119
    invoke-virtual {v15, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1120
    :try_start_b
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v7, :cond_6

    if-eqz v3, :cond_c

    .line 1122
    :try_start_c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto/16 :goto_8

    .line 1124
    :cond_6
    :try_start_d
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1125
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object/from16 v22, v3

    move-object v7, v13

    const/4 v3, 0x0

    :goto_5
    :try_start_e
    const-string v14, "raw_events_metadata"

    .line 1126
    new-array v13, v12, [Ljava/lang/String;

    const-string v16, "metadata"

    aput-object v16, v13, v11

    const-string v16, "app_id = ? and metadata_fingerprint = ?"

    new-array v8, v10, [Ljava/lang/String;

    aput-object v3, v8, v11

    aput-object v7, v8, v12

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "rowid"

    const-string v21, "2"

    move-object v9, v13

    move-object v13, v15

    move-object/from16 v23, v15

    move-object v15, v9

    move-object/from16 v17, v8

    .line 1127
    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1128
    :try_start_f
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-nez v9, :cond_7

    .line 1129
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v5

    .line 1130
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v5

    const-string v6, "Raw event metadata record is missing. appId"

    .line 1131
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-eqz v8, :cond_c

    .line 1133
    :try_start_10
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto/16 :goto_8

    .line 1135
    :cond_7
    :try_start_11
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 1136
    :try_start_12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzbh()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v13

    invoke-static {v13, v9}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzjf;[B)Lcom/google/android/gms/internal/measurement/zzjf;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzg;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 1146
    :try_start_13
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1147
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v13

    .line 1148
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v13

    const-string v14, "Get multiple raw event metadata records, expected one. appId"

    .line 1149
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 1150
    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1151
    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1152
    invoke-interface {v2, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg;)V

    const-wide/16 v13, -0x1

    cmp-long v9, v5, v13

    if-eqz v9, :cond_9

    const-string v9, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    const/4 v13, 0x3

    .line 1155
    new-array v14, v13, [Ljava/lang/String;

    aput-object v3, v14, v11

    aput-object v7, v14, v12

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v14, v10

    move-object/from16 v16, v9

    move-object/from16 v17, v14

    goto :goto_6

    :cond_9
    const-string v5, "app_id = ? and metadata_fingerprint = ?"

    .line 1157
    new-array v6, v10, [Ljava/lang/String;

    aput-object v3, v6, v11

    aput-object v7, v6, v12

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    :goto_6
    const-string v14, "raw_events"

    const/4 v5, 0x4

    .line 1158
    new-array v15, v5, [Ljava/lang/String;

    const-string v5, "rowid"

    aput-object v5, v15, v11

    const-string v5, "name"

    aput-object v5, v15, v12

    const-string v5, "timestamp"

    aput-object v5, v15, v10

    const-string v5, "data"

    const/4 v6, 0x3

    aput-object v5, v15, v6

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "rowid"

    const/16 v21, 0x0

    move-object/from16 v13, v23

    .line 1159
    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 1160
    :try_start_14
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_a

    .line 1161
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v6

    .line 1162
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    const-string v7, "Raw event data disappeared while in transaction. appId"

    .line 1163
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 1164
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz v5, :cond_c

    .line 1166
    :try_start_15
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    goto/16 :goto_8

    .line 1168
    :cond_a
    :try_start_16
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x3

    .line 1169
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 1170
    :try_start_17
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzj()Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    move-result-object v8

    invoke-static {v8, v9}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzjf;[B)Lcom/google/android/gms/internal/measurement/zzjf;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 1177
    :try_start_18
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    move-result-object v9

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    .line 1178
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-interface {v2, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zza(JLcom/google/android/gms/internal/measurement/zzcd$zzc;)Z

    move-result v6
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    if-nez v6, :cond_b

    if-eqz v5, :cond_c

    .line 1180
    :try_start_19
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object v6, v0

    .line 1173
    :try_start_1a
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v7

    .line 1174
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v7

    const-string v8, "Data loss. Failed to merge raw event. appId"

    .line 1175
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v6}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1182
    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    if-nez v6, :cond_a

    if-eqz v5, :cond_c

    .line 1184
    :try_start_1b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v8, v5

    goto/16 :goto_43

    :catch_3
    move-exception v0

    move-object v7, v3

    move-object v8, v5

    goto/16 :goto_0

    :catch_4
    move-exception v0

    move-object v5, v0

    .line 1139
    :try_start_1c
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v6

    .line 1140
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    const-string v7, "Data loss. Failed to merge raw event metadata. appId"

    .line 1141
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 1142
    invoke-virtual {v6, v7, v9, v5}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_5
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    if-eqz v8, :cond_c

    .line 1144
    :try_start_1d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v7, v3

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object/from16 v8, v22

    goto/16 :goto_43

    :catch_6
    move-exception v0

    move-object v7, v3

    move-object/from16 v8, v22

    goto/16 :goto_0

    :catch_7
    move-exception v0

    move-object v8, v3

    const/4 v7, 0x0

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    move-object v2, v0

    const/4 v8, 0x0

    goto/16 :goto_43

    :catch_8
    move-exception v0

    move-object v3, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1186
    :goto_7
    :try_start_1e
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v4

    .line 1187
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v4

    const-string v5, "Data loss. Error selecting raw event. appId"

    .line 1188
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    if-eqz v8, :cond_c

    .line 1190
    :try_start_1f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1195
    :cond_c
    :goto_8
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zzc:Ljava/util/List;

    if-eqz v3, :cond_e

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zzc:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_9

    :cond_d
    const/4 v3, 0x0

    goto :goto_a

    :cond_e
    :goto_9
    const/4 v3, 0x1

    :goto_a
    if-nez v3, :cond_7f

    .line 1198
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 1199
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhv;->zzbo()Lcom/google/android/gms/internal/measurement/zzhv$zzb;

    move-result-object v3

    .line 1200
    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhv$zzb;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v3

    .line 1204
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v4

    .line 1205
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzat;->zzau:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 1210
    :goto_b
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zzc:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_40

    .line 1212
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zzc:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    .line 1213
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhv;->zzbo()Lcom/google/android/gms/internal/measurement/zzhv$zzb;

    move-result-object v12

    .line 1214
    check-cast v12, Lcom/google/android/gms/internal/measurement/zzhv$zzb;

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    .line 1215
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc()Lcom/google/android/gms/measurement/internal/zzfv;

    move-result-object v7

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 1216
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1218
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v5

    .line 1219
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v5

    const-string v6, "Dropping blacklisted raw event. appId"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 1220
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move/from16 v22, v9

    .line 1221
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v9

    move/from16 v25, v15

    .line 1222
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1223
    invoke-virtual {v5, v6, v7, v9}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1225
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc()Lcom/google/android/gms/measurement/internal/zzfv;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzg(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 1226
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc()Lcom/google/android/gms/measurement/internal/zzfv;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 1227
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_c

    :cond_f
    const/4 v5, 0x0

    goto :goto_d

    :cond_10
    :goto_c
    const/4 v5, 0x1

    :goto_d
    if-nez v5, :cond_11

    const-string v5, "_err"

    .line 1228
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 1230
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v26

    .line 1231
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 1232
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0xb

    const-string v29, "_ev"

    .line 1233
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    .line 1234
    invoke-virtual/range {v26 .. v31}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_11
    move/from16 v15, v25

    const/4 v6, -0x1

    const/4 v9, 0x3

    goto/16 :goto_23

    :cond_12
    move/from16 v22, v9

    move/from16 v25, v15

    .line 1235
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlj;->zzb()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1236
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v5

    .line 1237
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzat;->zzcs:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1238
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_ai"

    .line 1239
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v5, "_ai"

    .line 1240
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    .line 1242
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v5

    .line 1243
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v5

    const-string v6, "Renaming ad_impression to _ai"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    .line 1245
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v5

    const/4 v6, 0x5

    .line 1246
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzex;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v5, 0x0

    .line 1247
    :goto_e
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb()I

    move-result v6

    if-ge v5, v6, :cond_14

    const-string v6, "ad_platform"

    .line 1248
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1249
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_13

    const-string v6, "admob"

    .line 1250
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1252
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v6

    .line 1253
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzex;->zzj()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    const-string v7, "AdMob ad impression logged from app. Potentially duplicative."

    .line 1254
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 1257
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc()Lcom/google/android/gms/measurement/internal/zzfv;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 1258
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 1259
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v6

    .line 1260
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1261
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v9, 0x171c4

    if-eq v7, v9, :cond_17

    const v9, 0x17331

    if-eq v7, v9, :cond_16

    const v9, 0x17333

    if-eq v7, v9, :cond_15

    goto :goto_f

    :cond_15
    const-string v7, "_ui"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    const/4 v6, 0x1

    goto :goto_10

    :cond_16
    const-string v7, "_ug"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    const/4 v6, 0x2

    goto :goto_10

    :cond_17
    const-string v7, "_in"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    const/4 v6, 0x0

    goto :goto_10

    :cond_18
    :goto_f
    const/4 v6, -0x1

    :goto_10
    packed-switch v6, :pswitch_data_0

    const/4 v6, 0x0

    goto :goto_11

    :pswitch_0
    const/4 v6, 0x1

    :goto_11
    if-eqz v6, :cond_19

    goto :goto_12

    :cond_19
    move/from16 v27, v8

    move-wide/from16 v28, v13

    goto/16 :goto_18

    :cond_1a
    :goto_12
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 1267
    :goto_13
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb()I

    move-result v15

    if-ge v6, v15, :cond_1d

    const-string v15, "_c"

    .line 1268
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v26

    move/from16 v27, v8

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 1270
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v7

    .line 1271
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhv;->zzbo()Lcom/google/android/gms/internal/measurement/zzhv$zzb;

    move-result-object v7

    .line 1272
    check-cast v7, Lcom/google/android/gms/internal/measurement/zzhv$zzb;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-wide/from16 v28, v13

    const-wide/16 v13, 0x1

    .line 1273
    invoke-virtual {v7, v13, v14}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v7

    .line 1274
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    .line 1276
    invoke-virtual {v12, v6, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zze;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    const/4 v7, 0x1

    goto :goto_14

    :cond_1b
    move-wide/from16 v28, v13

    const-string v8, "_r"

    .line 1277
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 1279
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v8

    .line 1280
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhv;->zzbo()Lcom/google/android/gms/internal/measurement/zzhv$zzb;

    move-result-object v8

    .line 1281
    check-cast v8, Lcom/google/android/gms/internal/measurement/zzhv$zzb;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    const-wide/16 v13, 0x1

    .line 1282
    invoke-virtual {v8, v13, v14}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v8

    .line 1283
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    .line 1285
    invoke-virtual {v12, v6, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zze;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    const/4 v9, 0x1

    :cond_1c
    :goto_14
    add-int/lit8 v6, v6, 0x1

    move/from16 v8, v27

    move-wide/from16 v13, v28

    goto :goto_13

    :cond_1d
    move/from16 v27, v8

    move-wide/from16 v28, v13

    if-nez v7, :cond_1e

    if-eqz v5, :cond_1e

    .line 1289
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v6

    .line 1290
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    const-string v7, "Marking event as conversion"

    .line 1291
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v8

    .line 1292
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1293
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1295
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzm()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v6

    const-string v7, "_c"

    .line 1296
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v6

    const-wide/16 v7, 0x1

    .line 1297
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v6

    .line 1298
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    :cond_1e
    if-nez v9, :cond_1f

    .line 1301
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v6

    .line 1302
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    const-string v7, "Marking event as real-time"

    .line 1303
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v8

    .line 1304
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1305
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1307
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzm()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v6

    const-string v7, "_r"

    .line 1308
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v6

    const-wide/16 v7, 0x1

    .line 1309
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v6

    .line 1310
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    .line 1313
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v30

    .line 1314
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzy()J

    move-result-wide v31

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 1315
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x1

    .line 1316
    invoke-virtual/range {v30 .. v38}, Lcom/google/android/gms/measurement/internal/zzac;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v6

    .line 1317
    iget-wide v6, v6, Lcom/google/android/gms/measurement/internal/zzaf;->zze:J

    .line 1318
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v8

    .line 1319
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzy;->zzc(Ljava/lang/String;)I

    move-result v8

    int-to-long v8, v8

    cmp-long v13, v6, v8

    if-lez v13, :cond_20

    const-string v6, "_r"

    .line 1320
    invoke-static {v12, v6}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;)V

    move/from16 v9, v22

    goto :goto_15

    :cond_20
    const/4 v9, 0x1

    .line 1322
    :goto_15
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_27

    if-eqz v5, :cond_27

    .line 1325
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v30

    .line 1326
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzy()J

    move-result-wide v31

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 1327
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x1

    const/16 v37, 0x0

    const/16 v38, 0x0

    .line 1328
    invoke-virtual/range {v30 .. v38}, Lcom/google/android/gms/measurement/internal/zzac;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v6

    .line 1329
    iget-wide v6, v6, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:J

    .line 1330
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v8

    .line 1331
    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v13

    .line 1332
    sget-object v14, Lcom/google/android/gms/measurement/internal/zzat;->zzm:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v8, v13, v14}, Lcom/google/android/gms/measurement/internal/zzy;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)I

    move-result v8

    int-to-long v13, v8

    cmp-long v8, v6, v13

    if-lez v8, :cond_26

    .line 1335
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v6

    .line 1336
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    const-string v7, "Too many conversions. Not logging as conversion. appId"

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 1337
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 1338
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, -0x1

    .line 1342
    :goto_16
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb()I

    move-result v14

    if-ge v6, v14, :cond_23

    .line 1343
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v14

    const-string v15, "_c"

    move/from16 v22, v9

    .line 1344
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 1346
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzhv;->zzbo()Lcom/google/android/gms/internal/measurement/zzhv$zzb;

    move-result-object v8

    .line 1347
    check-cast v8, Lcom/google/android/gms/internal/measurement/zzhv$zzb;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move v13, v6

    goto :goto_17

    :cond_21
    const-string v9, "_err"

    .line 1349
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    const/4 v7, 0x1

    :cond_22
    :goto_17
    add-int/lit8 v6, v6, 0x1

    move/from16 v9, v22

    goto :goto_16

    :cond_23
    move/from16 v22, v9

    if-eqz v7, :cond_24

    if-eqz v8, :cond_24

    .line 1354
    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    goto :goto_18

    :cond_24
    if-eqz v8, :cond_25

    .line 1358
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgf;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzhv$zzb;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    const-string v7, "_err"

    .line 1359
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v6

    const-wide/16 v7, 0xa

    .line 1360
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v6

    .line 1361
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    .line 1362
    invoke-virtual {v12, v13, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zze;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    goto :goto_18

    .line 1365
    :cond_25
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v6

    .line 1366
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    const-string v7, "Did not find conversion parameter. appId"

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 1367
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 1368
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_18

    :cond_26
    move/from16 v22, v9

    goto :goto_18

    :cond_27
    move/from16 v22, v9

    :goto_18
    if-eqz v5, :cond_31

    .line 1371
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    .line 1374
    :goto_19
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_2a

    const-string v9, "value"

    .line 1375
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_28

    move v7, v6

    goto :goto_1a

    :cond_28
    const-string v9, "currency"

    .line 1377
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_29

    move v8, v6

    :cond_29
    :goto_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_2a
    const/4 v6, -0x1

    if-eq v7, v6, :cond_30

    .line 1381
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zze()Z

    move-result v6

    if-nez v6, :cond_2b

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzi()Z

    move-result v6

    if-nez v6, :cond_2b

    .line 1383
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v5

    .line 1384
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzex;->zzj()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v5

    const-string v6, "Value must be specified with a numeric type."

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    .line 1386
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    const-string v5, "_c"

    .line 1387
    invoke-static {v12, v5}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;)V

    const/16 v5, 0x12

    const-string v6, "value"

    .line 1388
    invoke-static {v12, v5, v6}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;ILjava/lang/String;)V

    const/4 v6, -0x1

    const/4 v9, 0x3

    goto :goto_1d

    :cond_2b
    const/4 v6, -0x1

    if-ne v8, v6, :cond_2c

    const/4 v5, 0x1

    const/4 v9, 0x3

    goto :goto_1c

    .line 1393
    :cond_2c
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v5

    .line 1394
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_2d

    const/4 v5, 0x1

    goto :goto_1c

    :cond_2d
    const/4 v8, 0x0

    .line 1396
    :goto_1b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v8, v13, :cond_2f

    .line 1397
    invoke-virtual {v5, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v13

    .line 1398
    invoke-static {v13}, Ljava/lang/Character;->isLetter(I)Z

    move-result v14

    if-nez v14, :cond_2e

    const/4 v5, 0x1

    goto :goto_1c

    .line 1401
    :cond_2e
    invoke-static {v13}, Ljava/lang/Character;->charCount(I)I

    move-result v13

    add-int/2addr v8, v13

    goto :goto_1b

    :cond_2f
    const/4 v5, 0x0

    :goto_1c
    if-eqz v5, :cond_32

    .line 1405
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v5

    .line 1406
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzex;->zzj()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v5

    const-string v8, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 1407
    invoke-virtual {v5, v8}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    const-string v5, "_c"

    .line 1410
    invoke-static {v12, v5}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;)V

    const/16 v5, 0x13

    const-string v7, "currency"

    .line 1411
    invoke-static {v12, v5, v7}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;ILjava/lang/String;)V

    goto :goto_1d

    :cond_30
    const/4 v9, 0x3

    goto :goto_1d

    :cond_31
    const/4 v6, -0x1

    const/4 v9, 0x3

    .line 1413
    :cond_32
    :goto_1d
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v5

    .line 1414
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzat;->zzat:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v5

    if-eqz v5, :cond_3c

    const-string v5, "_e"

    .line 1415
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v7, 0x3e8

    if-eqz v5, :cond_34

    .line 1416
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v13, "_fr"

    invoke-static {v5, v13}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v5

    if-nez v5, :cond_3c

    if-eqz v19, :cond_33

    .line 1418
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v13

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v23

    sub-long v13, v13, v23

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    cmp-long v5, v13, v7

    if-gtz v5, :cond_33

    .line 1419
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/zzgf;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhv$zzb;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    .line 1420
    invoke-direct {v1, v12, v5}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 1423
    invoke-virtual {v3, v11, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    const/16 v18, 0x0

    const/16 v19, 0x0

    goto/16 :goto_20

    :cond_33
    move-object/from16 v18, v12

    move/from16 v10, v25

    goto/16 :goto_20

    :cond_34
    const-string v5, "_vs"

    .line 1429
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1430
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v13, "_et"

    invoke-static {v5, v13}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v5

    if-nez v5, :cond_3c

    if-eqz v18, :cond_35

    .line 1432
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v13

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v23

    sub-long v13, v13, v23

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    cmp-long v5, v13, v7

    if-gtz v5, :cond_35

    .line 1433
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzgf;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhv$zzb;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    .line 1434
    invoke-direct {v1, v5, v12}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 1437
    invoke-virtual {v3, v10, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    const/16 v18, 0x0

    const/16 v19, 0x0

    goto/16 :goto_20

    :cond_35
    move-object/from16 v19, v12

    move/from16 v11, v25

    goto/16 :goto_20

    .line 1444
    :cond_36
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v5

    .line 1445
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 1446
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzat;->zzbn:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v5

    if-eqz v5, :cond_3c

    const-string v5, "_ab"

    .line 1447
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 1448
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v7, "_et"

    invoke-static {v5, v7}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v5

    if-nez v5, :cond_3c

    if-eqz v18, :cond_3c

    .line 1450
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v7

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v13

    sub-long/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/16 v13, 0xfa0

    cmp-long v5, v7, v13

    if-gtz v5, :cond_3c

    .line 1451
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzgf;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhv$zzb;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    .line 1452
    invoke-direct {v1, v5, v12}, Lcom/google/android/gms/measurement/internal/zzkp;->zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)V

    const-string v7, "_e"

    .line 1455
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1456
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 1458
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v8, "_sn"

    invoke-static {v7, v8}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v7

    .line 1460
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    .line 1461
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v13, "_sc"

    invoke-static {v8, v13}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v8

    .line 1463
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v14, "_si"

    invoke-static {v13, v14}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v13

    if-eqz v7, :cond_37

    .line 1464
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v7

    goto :goto_1e

    :cond_37
    const-string v7, ""

    .line 1465
    :goto_1e
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_38

    .line 1466
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    move-result-object v14

    const-string v15, "_sn"

    invoke-virtual {v14, v12, v15, v7}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_38
    if-eqz v8, :cond_39

    .line 1467
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v7

    goto :goto_1f

    :cond_39
    const-string v7, ""

    .line 1468
    :goto_1f
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3a

    .line 1469
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    move-result-object v8

    const-string v14, "_sc"

    invoke-virtual {v8, v12, v14, v7}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3a
    if-eqz v13, :cond_3b

    .line 1471
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    move-result-object v7

    const-string v8, "_si"

    .line 1472
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v7, v12, v8, v13}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1474
    :cond_3b
    invoke-virtual {v3, v10, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    const/16 v18, 0x0

    :cond_3c
    :goto_20
    if-nez v4, :cond_3f

    const-string v5, "_e"

    .line 1476
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 1477
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb()I

    move-result v5

    if-nez v5, :cond_3d

    .line 1479
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v5

    .line 1480
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v5

    const-string v7, "Engagement event does not contain any parameters. appId"

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 1481
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 1482
    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_21

    .line 1484
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    move-result-object v5

    .line 1485
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v8, "_et"

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/measurement/internal/zzkt;->zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_3e

    .line 1488
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v5

    .line 1489
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v5

    const-string v7, "Engagement event does not include duration. appId"

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 1490
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 1491
    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_21

    .line 1492
    :cond_3e
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long v13, v28, v7

    goto :goto_22

    :cond_3f
    :goto_21
    move-wide/from16 v13, v28

    .line 1493
    :goto_22
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zzc:Ljava/util/List;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    move/from16 v8, v27

    invoke-interface {v5, v8, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v25, 0x1

    .line 1495
    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :goto_23
    add-int/lit8 v8, v8, 0x1

    move/from16 v9, v22

    goto/16 :goto_b

    :cond_40
    move/from16 v22, v9

    move-wide/from16 v28, v13

    move/from16 v25, v15

    if-eqz v4, :cond_45

    move/from16 v5, v25

    move-wide/from16 v13, v28

    const/4 v4, 0x0

    :goto_24
    if-ge v4, v5, :cond_44

    .line 1499
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    move-result-object v6

    const-string v7, "_e"

    .line 1500
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 1501
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    const-string v7, "_fr"

    invoke-static {v6, v7}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v7

    if-eqz v7, :cond_41

    .line 1502
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzc(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, -0x1

    const/4 v6, 0x1

    goto :goto_26

    .line 1507
    :cond_41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    const-string v7, "_et"

    invoke-static {v6, v7}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v6

    if-eqz v6, :cond_43

    .line 1509
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zze()Z

    move-result v7

    if-eqz v7, :cond_42

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_25

    :cond_42
    const/4 v6, 0x0

    :goto_25
    if-eqz v6, :cond_43

    .line 1510
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_43

    .line 1511
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v13, v6

    const/4 v6, 0x1

    goto :goto_26

    :cond_43
    const/4 v6, 0x1

    :goto_26
    add-int/2addr v4, v6

    goto :goto_24

    :cond_44
    const/4 v4, 0x0

    goto :goto_27

    :cond_45
    move-wide/from16 v13, v28

    const/4 v4, 0x0

    .line 1513
    :goto_27
    invoke-direct {v1, v3, v13, v14, v4}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;JZ)V

    .line 1515
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_46
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v6, "_s"

    .line 1516
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    const/4 v4, 0x1

    goto :goto_28

    :cond_47
    const/4 v4, 0x0

    :goto_28
    if-eqz v4, :cond_48

    .line 1521
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v4

    .line 1522
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_se"

    .line 1523
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    const-string v4, "_sid"

    .line 1525
    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_49

    const/4 v4, 0x1

    goto :goto_29

    :cond_49
    const/4 v4, 0x0

    :goto_29
    if-eqz v4, :cond_4a

    const/4 v4, 0x1

    .line 1527
    invoke-direct {v1, v3, v13, v14, v4}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;JZ)V

    goto :goto_2a

    :cond_4a
    const-string v4, "_se"

    .line 1529
    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_4b

    .line 1531
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zze(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 1533
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v4

    .line 1534
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v4

    const-string v5, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 1535
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1536
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1537
    :cond_4b
    :goto_2a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    move-result-object v4

    .line 1538
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v5

    const-string v6, "Checking account type status for ad personalization signals"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    .line 1539
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzj()Lcom/google/android/gms/measurement/internal/zzfv;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zze(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 1540
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v5

    if-eqz v5, :cond_4e

    .line 1541
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 1542
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzal;->zzi()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 1543
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzex;->zzv()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v5

    const-string v6, "Turning off ad personalization due to account type"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    .line 1544
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzj()Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v5

    const-string v6, "_npa"

    .line 1545
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v5

    .line 1546
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzal;->zzg()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v4

    const-wide/16 v5, 0x1

    .line 1547
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v4

    .line 1548
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    const/4 v5, 0x0

    .line 1550
    :goto_2b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zze()I

    move-result v6

    if-ge v5, v6, :cond_4d

    const-string v6, "_npa"

    .line 1552
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzd(I)Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc()Ljava/lang/String;

    move-result-object v7

    .line 1553
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 1554
    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzk;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    const/4 v5, 0x1

    goto :goto_2c

    :cond_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_4d
    const/4 v5, 0x0

    :goto_2c
    if-nez v5, :cond_4e

    .line 1559
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzk;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_4e
    const-wide v4, 0x7fffffffffffffffL

    .line 1561
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v4

    const-wide/high16 v5, -0x8000000000000000L

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzc(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    const/4 v4, 0x0

    .line 1562
    :goto_2d
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb()I

    move-result v5

    if-ge v4, v5, :cond_51

    .line 1563
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    move-result-object v5

    .line 1564
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zze()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzf()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-gez v10, :cond_4f

    .line 1565
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zze()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 1566
    :cond_4f
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zze()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzg()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_50

    .line 1567
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zze()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzc(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 1569
    :cond_51
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzb()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1570
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v4

    .line 1571
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzat;->zzcn:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1572
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzq()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 1574
    :cond_52
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzp()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v4

    .line 1575
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzf()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v5

    .line 1576
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v6

    .line 1577
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza()Ljava/util/List;

    move-result-object v7

    .line 1578
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzd()Ljava/util/List;

    move-result-object v8

    .line 1579
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzf()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 1580
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzg()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 1581
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/zzo;->zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v5

    .line 1582
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 1584
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v4

    .line 1585
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzy;->zzi(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 1587
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1588
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1590
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v6

    .line 1591
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzkx;->zzg()Ljava/security/SecureRandom;

    move-result-object v6

    const/4 v7, 0x0

    .line 1592
    :goto_2e
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb()I

    move-result v8

    if-ge v7, v8, :cond_6e

    .line 1593
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    move-result-object v8

    .line 1594
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhv;->zzbo()Lcom/google/android/gms/internal/measurement/zzhv$zzb;

    move-result-object v8

    .line 1595
    check-cast v8, Lcom/google/android/gms/internal/measurement/zzhv$zzb;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    .line 1596
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v9

    const-string v10, "_ep"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_57

    .line 1598
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v11, "_en"

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzkt;->zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1599
    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzan;

    if-nez v10, :cond_53

    .line 1602
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v10

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v10

    .line 1603
    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    :cond_53
    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzan;->zzi:Ljava/lang/Long;

    if-nez v9, :cond_56

    .line 1605
    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzan;->zzj:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v13, 0x1

    cmp-long v9, v11, v13

    if-lez v9, :cond_54

    .line 1606
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    move-result-object v9

    const-string v11, "_sr"

    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/zzan;->zzj:Ljava/lang/Long;

    .line 1607
    invoke-virtual {v9, v8, v11, v12}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1608
    :cond_54
    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzan;->zzk:Ljava/lang/Boolean;

    if-eqz v9, :cond_55

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzan;->zzk:Ljava/lang/Boolean;

    .line 1609
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_55

    .line 1610
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    move-result-object v9

    const-string v10, "_efs"

    const-wide/16 v11, 0x1

    .line 1611
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v8, v10, v13}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1612
    :cond_55
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1613
    :cond_56
    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-object/from16 p1, v2

    move-object v2, v3

    move-object v15, v6

    move v3, v7

    goto/16 :goto_37

    .line 1616
    :cond_57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc()Lcom/google/android/gms/measurement/internal/zzfv;

    move-result-object v9

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 1617
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf(Ljava/lang/String;)J

    move-result-wide v9

    .line 1619
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    .line 1620
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v11

    invoke-static {v11, v12, v9, v10}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(JJ)J

    move-result-wide v11

    .line 1622
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v14, "_dbg"

    const-wide/16 v18, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 1623
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5f

    if-nez v15, :cond_58

    goto :goto_30

    .line 1625
    :cond_58
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zza()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-object/from16 p1, v13

    .line 1626
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5d

    .line 1627
    instance-of v13, v15, Ljava/lang/Long;

    if-eqz v13, :cond_59

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5b

    :cond_59
    instance-of v13, v15, Ljava/lang/String;

    if-eqz v13, :cond_5a

    .line 1628
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5b

    :cond_5a
    instance-of v13, v15, Ljava/lang/Double;

    if-eqz v13, :cond_5c

    .line 1629
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzj()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5c

    :cond_5b
    const/4 v13, 0x1

    goto :goto_31

    :cond_5c
    const/4 v13, 0x0

    goto :goto_31

    :cond_5d
    move-object/from16 v13, p1

    goto :goto_2f

    :cond_5e
    const/4 v13, 0x0

    goto :goto_31

    :cond_5f
    :goto_30
    const/4 v13, 0x0

    :goto_31
    if-nez v13, :cond_60

    .line 1635
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc()Lcom/google/android/gms/measurement/internal/zzfv;

    move-result-object v13

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 1636
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzfv;->zzd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    goto :goto_32

    :cond_60
    const/4 v13, 0x1

    :goto_32
    if-gtz v13, :cond_61

    .line 1639
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v9

    .line 1640
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v9

    const-string v10, "Sample rate must be positive. event, rate"

    .line 1641
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1642
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1643
    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-object/from16 p1, v2

    move-object v2, v3

    move-object v15, v6

    move v3, v7

    goto/16 :goto_37

    .line 1645
    :cond_61
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/measurement/internal/zzan;

    if-nez v14, :cond_62

    .line 1648
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v14

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v18, v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v15, v9}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v14

    if-nez v14, :cond_63

    .line 1651
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v9

    .line 1652
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v9

    const-string v10, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 1653
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v14

    .line 1654
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v15

    .line 1655
    invoke-virtual {v9, v10, v14, v15}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1656
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzan;

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 1657
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v26

    .line 1658
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v27

    const-wide/16 v28, 0x1

    const-wide/16 v30, 0x1

    const-wide/16 v32, 0x1

    .line 1659
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v34

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v25, v9

    invoke-direct/range {v25 .. v41}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object v14, v9

    goto :goto_33

    :cond_62
    move-wide/from16 v18, v9

    .line 1661
    :cond_63
    :goto_33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v15, "_eid"

    invoke-virtual {v9, v10, v15}, Lcom/google/android/gms/measurement/internal/zzkt;->zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_64

    const/4 v10, 0x1

    goto :goto_34

    :cond_64
    const/4 v10, 0x0

    .line 1662
    :goto_34
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v15, 0x1

    if-ne v13, v15, :cond_67

    .line 1664
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1665
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_66

    iget-object v9, v14, Lcom/google/android/gms/measurement/internal/zzan;->zzi:Ljava/lang/Long;

    if-nez v9, :cond_65

    iget-object v9, v14, Lcom/google/android/gms/measurement/internal/zzan;->zzj:Ljava/lang/Long;

    if-nez v9, :cond_65

    iget-object v9, v14, Lcom/google/android/gms/measurement/internal/zzan;->zzk:Ljava/lang/Boolean;

    if-eqz v9, :cond_66

    :cond_65
    const/4 v9, 0x0

    .line 1666
    invoke-virtual {v14, v9, v9, v9}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v10

    .line 1667
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1668
    :cond_66
    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-object/from16 p1, v2

    move-object v2, v3

    move-object v15, v6

    move v3, v7

    goto/16 :goto_37

    .line 1670
    :cond_67
    invoke-virtual {v6, v13}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v15

    if-nez v15, :cond_69

    .line 1671
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    move-result-object v9

    const-string v15, "_sr"

    move-object/from16 p1, v2

    move-object/from16 v21, v3

    int-to-long v2, v13

    .line 1672
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v8, v15, v13}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1673
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1674
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_68

    .line 1676
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v14, v3, v2, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v14

    .line 1678
    :cond_68
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v2

    .line 1679
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v9

    invoke-virtual {v14, v9, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzan;->zza(JJ)Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    .line 1680
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v15, v6

    move v3, v7

    move-object/from16 v2, v21

    goto/16 :goto_36

    :cond_69
    move-object/from16 p1, v2

    move-object/from16 v21, v3

    .line 1681
    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/zzan;->zzh:Ljava/lang/Long;

    if-eqz v2, :cond_6a

    .line 1682
    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/zzan;->zzh:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v15, v6

    move/from16 v25, v7

    goto :goto_35

    .line 1684
    :cond_6a
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    .line 1685
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzg()J

    move-result-wide v2

    move-object v15, v6

    move/from16 v25, v7

    move-wide/from16 v6, v18

    invoke-static {v2, v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(JJ)J

    move-result-wide v2

    :goto_35
    cmp-long v6, v2, v11

    if-eqz v6, :cond_6c

    .line 1687
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    move-result-object v2

    const-string v3, "_efs"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v3, v9}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1688
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    move-result-object v2

    const-string v3, "_sr"

    int-to-long v6, v13

    .line 1689
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v3, v9}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1690
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1691
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 1693
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v3, 0x0

    invoke-virtual {v14, v3, v2, v6}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v14

    .line 1695
    :cond_6b
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v2

    .line 1696
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v6

    invoke-virtual {v14, v6, v7, v11, v12}, Lcom/google/android/gms/measurement/internal/zzan;->zza(JJ)Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    .line 1697
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v21

    move/from16 v3, v25

    goto :goto_36

    .line 1698
    :cond_6c
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 1700
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v14, v9, v3, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v6

    .line 1701
    invoke-interface {v4, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v21

    move/from16 v3, v25

    goto :goto_36

    :cond_6d
    move-object/from16 v2, v21

    move/from16 v3, v25

    .line 1702
    :goto_36
    invoke-virtual {v2, v3, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :goto_37
    add-int/lit8 v7, v3, 0x1

    move-object v3, v2

    move-object v6, v15

    move-object/from16 v2, p1

    goto/16 :goto_2e

    :cond_6e
    move-object/from16 p1, v2

    move-object v2, v3

    .line 1704
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb()I

    move-result v6

    if-ge v3, v6, :cond_6f

    .line 1705
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 1706
    :cond_6f
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1707
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzan;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzan;)V

    goto :goto_38

    :cond_70
    move-object/from16 v3, p1

    goto :goto_39

    :cond_71
    move-object/from16 p1, v2

    move-object v2, v3

    move-object/from16 v3, p1

    .line 1709
    :goto_39
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v4

    .line 1710
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v5

    if-nez v5, :cond_72

    .line 1713
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v5

    .line 1714
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v5

    const-string v6, "Bundling raw events w/o app info. appId"

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 1715
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1716
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3e

    .line 1717
    :cond_72
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb()I

    move-result v6

    if-lez v6, :cond_77

    .line 1718
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzf;->zzk()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_73

    .line 1720
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zze(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_3a

    .line 1721
    :cond_73
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzi()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 1722
    :goto_3a
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzf;->zzj()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_74

    goto :goto_3b

    :cond_74
    move-wide v6, v8

    :goto_3b
    cmp-long v8, v6, v10

    if-eqz v8, :cond_75

    .line 1726
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzd(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_3c

    .line 1727
    :cond_75
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzh()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 1728
    :goto_3c
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzf;->zzv()V

    .line 1729
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzf;->zzs()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzg(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 1730
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzf()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzf;->zza(J)V

    .line 1731
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzg()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(J)V

    .line 1732
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzf;->zzad()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_76

    .line 1734
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_3d

    .line 1735
    :cond_76
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzn()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 1736
    :goto_3d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    .line 1737
    :cond_77
    :goto_3e
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb()I

    move-result v5

    if-lez v5, :cond_7b

    .line 1739
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc()Lcom/google/android/gms/measurement/internal/zzfv;

    move-result-object v5

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzca$zzb;

    move-result-object v5

    if-eqz v5, :cond_79

    .line 1740
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zza()Z

    move-result v6

    if-nez v6, :cond_78

    goto :goto_3f

    .line 1748
    :cond_78
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzb()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzi(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_40

    .line 1741
    :cond_79
    :goto_3f
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzam()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7a

    const-wide/16 v5, -0x1

    .line 1742
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzi(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_40

    .line 1744
    :cond_7a
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v5

    .line 1745
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v5

    const-string v6, "Did not find measurement config or missing version info. appId"

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 1746
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1747
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1749
    :goto_40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    move/from16 v11, v22

    invoke-virtual {v5, v2, v11}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg;Z)Z

    .line 1750
    :cond_7b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkp$zza;->zzb:Ljava/util/List;

    .line 1751
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 1753
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkm;->zzaj()V

    .line 1754
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rowid in ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 1755
    :goto_41
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_7d

    if-eqz v6, :cond_7c

    const-string v7, ","

    .line 1757
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1758
    :cond_7c
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_41

    :cond_7d
    const-string v6, ")"

    .line 1760
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1761
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "raw_events"

    .line 1762
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1763
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_7e

    .line 1764
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v2

    .line 1765
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    const-string v6, "Deleted fewer rows from raw events table than expected"

    .line 1766
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1767
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1768
    invoke-virtual {v2, v6, v5, v3}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1769
    :cond_7e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    .line 1770
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    :try_start_20
    const-string v5, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v6, 0x2

    .line 1771
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20 .. :try_end_20} :catch_9
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    goto :goto_42

    :catch_9
    move-exception v0

    move-object v3, v0

    .line 1774
    :try_start_21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v2

    .line 1775
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    const-string v5, "Failed to remove unused event metadata. appId"

    .line 1776
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4, v3}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1777
    :goto_42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    .line 1778
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    const/4 v2, 0x1

    return v2

    .line 1780
    :cond_7f
    :try_start_22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    .line 1781
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    const/4 v2, 0x0

    return v2

    :catchall_4
    move-exception v0

    move-object v2, v0

    :goto_43
    if-eqz v8, :cond_80

    .line 1192
    :try_start_23
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1193
    :cond_80
    throw v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_5

    :catchall_5
    move-exception v0

    move-object v2, v0

    .line 1783
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    .line 1784
    throw v2

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final zzaa()Z
    .locals 1

    .line 1962
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 1963
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzn()V

    .line 1964
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzx()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1965
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->d_()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final zzab()V
    .locals 21

    move-object/from16 v0, p0

    .line 2095
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 2096
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzn()V

    .line 2097
    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzn:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 2099
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 2100
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    .line 2101
    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzn:J

    sub-long/2addr v1, v7

    .line 2102
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_0

    .line 2105
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v1

    .line 2106
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 2107
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2108
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2109
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzv()Lcom/google/android/gms/measurement/internal/zzfh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfh;->zzb()V

    .line 2110
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzw()Lcom/google/android/gms/measurement/internal/zzkl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()V

    return-void

    .line 2112
    :cond_0
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzn:J

    .line 2113
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzaf()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzaa()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_6

    .line 2122
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 2123
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 2124
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzat;->zzz:Lcom/google/android/gms/measurement/internal/zzem;

    const/4 v6, 0x0

    .line 2125
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2126
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 2129
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzac;->zzy()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzac;->e_()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_6

    .line 2132
    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v10

    .line 2133
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzy;->zzu()Ljava/lang/String;

    move-result-object v10

    .line 2134
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, ".none."

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 2135
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzat;->zzu:Lcom/google/android/gms/measurement/internal/zzem;

    .line 2136
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 2137
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_2

    .line 2139
    :cond_5
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzat;->zzt:Lcom/google/android/gms/measurement/internal/zzem;

    .line 2140
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 2141
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_2

    .line 2144
    :cond_6
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzat;->zzs:Lcom/google/android/gms/measurement/internal/zzem;

    .line 2145
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 2146
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 2149
    :goto_2
    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v12

    .line 2150
    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/zzfj;->zzc:Lcom/google/android/gms/measurement/internal/zzfn;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfn;->zza()J

    move-result-wide v12

    .line 2152
    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v14

    .line 2153
    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/zzfj;->zzd:Lcom/google/android/gms/measurement/internal/zzfn;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfn;->zza()J

    move-result-wide v14

    .line 2154
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v16

    move-wide/from16 v17, v10

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzac;->zzv()J

    move-result-wide v9

    .line 2155
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v11

    move-wide/from16 v19, v7

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzac;->zzw()J

    move-result-wide v6

    .line 2156
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-nez v8, :cond_7

    move-wide v8, v3

    goto/16 :goto_5

    :cond_7
    sub-long/2addr v6, v1

    .line 2159
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long v6, v1, v6

    sub-long/2addr v12, v1

    .line 2160
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v8, v1, v8

    sub-long/2addr v14, v1

    .line 2161
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long/2addr v1, v10

    .line 2162
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long v10, v6, v19

    if-eqz v5, :cond_8

    cmp-long v5, v8, v3

    if-lez v5, :cond_8

    .line 2165
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    add-long v10, v10, v17

    .line 2166
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    move-result-object v5

    move-wide/from16 v12, v17

    invoke-virtual {v5, v8, v9, v12, v13}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(JJ)Z

    move-result v5

    if-nez v5, :cond_9

    add-long/2addr v8, v12

    goto :goto_3

    :cond_9
    move-wide v8, v10

    :goto_3
    cmp-long v5, v1, v3

    if-eqz v5, :cond_c

    cmp-long v5, v1, v6

    if-ltz v5, :cond_c

    const/4 v5, 0x0

    :goto_4
    const/16 v6, 0x14

    .line 2171
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzat;->zzab:Lcom/google/android/gms/measurement/internal/zzem;

    const/4 v10, 0x0

    .line 2172
    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 2173
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v11, 0x0

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_b

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v5

    .line 2177
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzat;->zzaa:Lcom/google/android/gms/measurement/internal/zzem;

    .line 2178
    invoke-virtual {v12, v10}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 2179
    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    mul-long v12, v12, v6

    add-long/2addr v8, v12

    cmp-long v6, v8, v1

    if-lez v6, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_b
    move-wide v8, v3

    :cond_c
    :goto_5
    cmp-long v1, v8, v3

    if-nez v1, :cond_d

    .line 2189
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v1

    .line 2190
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    .line 2191
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzv()Lcom/google/android/gms/measurement/internal/zzfh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfh;->zzb()V

    .line 2192
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzw()Lcom/google/android/gms/measurement/internal/zzkl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()V

    return-void

    .line 2194
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzd()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfa;->zze()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2196
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v1

    .line 2197
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    .line 2198
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzv()Lcom/google/android/gms/measurement/internal/zzfh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfh;->zza()V

    .line 2199
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzw()Lcom/google/android/gms/measurement/internal/zzkl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()V

    return-void

    .line 2202
    :cond_e
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v1

    .line 2203
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfj;->zze:Lcom/google/android/gms/measurement/internal/zzfn;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfn;->zza()J

    move-result-wide v1

    .line 2204
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzat;->zzq:Lcom/google/android/gms/measurement/internal/zzem;

    const/4 v6, 0x0

    .line 2205
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2206
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 2208
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(JJ)Z

    move-result v7

    if-nez v7, :cond_f

    add-long/2addr v1, v5

    .line 2209
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 2210
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzv()Lcom/google/android/gms/measurement/internal/zzfh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfh;->zzb()V

    .line 2212
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 2213
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v8, v1

    cmp-long v1, v8, v3

    if-gtz v1, :cond_10

    .line 2215
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzv:Lcom/google/android/gms/measurement/internal/zzem;

    const/4 v2, 0x0

    .line 2216
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2217
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 2220
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v1

    .line 2221
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfj;->zzc:Lcom/google/android/gms/measurement/internal/zzfn;

    .line 2222
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 2223
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfn;->zza(J)V

    .line 2225
    :cond_10
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v1

    .line 2226
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    const-string v2, "Upload scheduled in approximately ms"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2227
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzw()Lcom/google/android/gms/measurement/internal/zzkl;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(J)V

    return-void

    .line 2115
    :cond_11
    :goto_6
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v1

    .line 2116
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    .line 2117
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzv()Lcom/google/android/gms/measurement/internal/zzfh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfh;->zzb()V

    .line 2118
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzw()Lcom/google/android/gms/measurement/internal/zzkl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()V

    return-void
.end method

.method private final zzac()V
    .locals 5

    .line 2234
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 2235
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzr:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzs:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzt:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2245
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    .line 2246
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    .line 2247
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzo:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 2249
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 2250
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 2252
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 2237
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    .line 2238
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    const-string v1, "Not stopping services. fetch, network, upload"

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzr:Z

    .line 2239
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzs:Z

    .line 2240
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzt:Z

    .line 2241
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 2242
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzad()Z
    .locals 4

    .line 2307
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 2309
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 2310
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzbi:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2311
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzu:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2313
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    .line 2314
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    const-string v2, "Storage concurrent access okay"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "google_app_measurement.db"

    .line 2319
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzm()Landroid/content/Context;

    move-result-object v2

    .line 2320
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 2321
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2322
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v3, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzv:Ljava/nio/channels/FileChannel;

    .line 2323
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzv:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzu:Ljava/nio/channels/FileLock;

    .line 2324
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzu:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_1

    .line 2326
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    .line 2327
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    const-string v2, "Storage concurrent access okay"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    return v1

    .line 2330
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    .line 2331
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2345
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v1

    .line 2346
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    const-string v2, "Storage lock already acquired"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2340
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v1

    .line 2341
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 2335
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v1

    .line 2336
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzn;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 2808
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 2809
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 2814
    :cond_0
    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzb(Lcom/google/android/gms/measurement/internal/zzf;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2815
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2817
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v1

    .line 2818
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    const-string v4, "App version does not match; dropping. appId"

    .line 2819
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    .line 2821
    :cond_1
    new-instance v31, Lcom/google/android/gms/measurement/internal/zzn;

    .line 2822
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Ljava/lang/String;

    move-result-object v4

    .line 2823
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzl()Ljava/lang/String;

    move-result-object v5

    .line 2824
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzm()J

    move-result-wide v6

    .line 2825
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Ljava/lang/String;

    move-result-object v8

    .line 2826
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()J

    move-result-wide v9

    .line 2827
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzp()J

    move-result-wide v11

    const/4 v13, 0x0

    .line 2828
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzr()Z

    move-result v14

    .line 2829
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzi()Ljava/lang/String;

    move-result-object v16

    .line 2830
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzae()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    .line 2831
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()Z

    move-result v22

    .line 2832
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzag()Z

    move-result v23

    const/16 v24, 0x0

    .line 2833
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()Ljava/lang/String;

    move-result-object v25

    .line 2834
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzah()Ljava/lang/Boolean;

    move-result-object v26

    .line 2835
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzq()J

    move-result-wide v27

    .line 2836
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzai()Ljava/util/List;

    move-result-object v29

    .line 2837
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznq;->zzb()Z

    move-result v30

    if-eqz v30, :cond_2

    .line 2838
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v3

    .line 2839
    sget-object v15, Lcom/google/android/gms/measurement/internal/zzat;->zzbj:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v3, v2, v15}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2840
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzg()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v30, v1

    goto :goto_0

    :cond_2
    const/16 v30, 0x0

    .line 2842
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2843
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v1

    .line 2844
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2845
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzad;->zza()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v32, v1

    goto :goto_1

    :cond_3
    const-string v1, ""

    move-object/from16 v32, v1

    :goto_1
    move-object/from16 v1, v31

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v6

    move-object v7, v8

    move-wide v8, v9

    move-wide v10, v11

    move-object v12, v13

    move v13, v14

    const/4 v14, 0x0

    move-object/from16 v15, v16

    move-wide/from16 v16, v17

    move-wide/from16 v18, v19

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-wide/from16 v26, v27

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v32

    .line 2846
    invoke-direct/range {v1 .. v30}, Lcom/google/android/gms/measurement/internal/zzn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v31

    .line 2811
    :cond_4
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v1

    .line 2812
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zzv()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    const-string v3, "No app data available; dropping"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzf;)Ljava/lang/Boolean;
    .locals 8

    .line 2254
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzm()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    .line 2256
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzm()Landroid/content/Context;

    move-result-object v0

    .line 2257
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 2258
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzm()J

    move-result-wide v1

    int-to-long v6, v0

    cmp-long p1, v1, v6

    if-nez p1, :cond_1

    .line 2259
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2262
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzm()Landroid/content/Context;

    move-result-object v0

    .line 2263
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 2264
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2265
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 2269
    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)V
    .locals 8

    const-string v0, "_e"

    .line 1840
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1841
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 1843
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v0

    .line 1844
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zze()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    goto :goto_0

    .line 1846
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v0

    .line 1848
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v5, "_et"

    invoke-static {v2, v5}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1849
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-lez v7, :cond_1

    .line 1850
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1851
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    move-result-object v2

    const-string v3, "_et"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1852
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    move-result-object p2

    const-string v0, "_fr"

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 8

    .line 242
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznr;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 244
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzch:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Lcom/google/android/gms/measurement/internal/zzar;)Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    .line 247
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v0

    .line 248
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzfb;->zzb:Landroid/os/Bundle;

    .line 249
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzac;->zzi(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 250
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 252
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v1

    .line 255
    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Ljava/lang/String;)I

    move-result v1

    .line 256
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Lcom/google/android/gms/measurement/internal/zzfb;I)V

    .line 257
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 260
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzbe:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_cmp"

    .line 262
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "referrer API v2"

    .line 263
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    const-string v2, "_cis"

    .line 264
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    const-string v1, "gclid"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 267
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkw;

    const-string v3, "_lgclid"

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzar;->zzd:J

    const-string v7, "auto"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzkw;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 270
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/measurement/internal/zzkm;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkm;->zzai()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zzc(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 411
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 413
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 414
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzn()V

    .line 416
    iget-object v15, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    .line 419
    :cond_0
    iget-boolean v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v6, :cond_1

    .line 420
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    return-void

    .line 422
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc()Lcom/google/android/gms/measurement/internal/zzfv;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    invoke-virtual {v6, v15, v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const/4 v14, 0x0

    const/4 v13, 0x0

    if-eqz v6, :cond_6

    .line 424
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v3

    .line 425
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v3

    const-string v4, "Dropping blacklisted event. appId"

    .line 426
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 427
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v6

    .line 428
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 429
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc()Lcom/google/android/gms/measurement/internal/zzfv;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/google/android/gms/measurement/internal/zzfv;->zzg(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc()Lcom/google/android/gms/measurement/internal/zzfv;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v13, 0x1

    :cond_3
    if-nez v13, :cond_4

    const-string v3, "_err"

    .line 433
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 435
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v6

    const/16 v8, 0xb

    const-string v9, "_ev"

    .line 436
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v7, v15

    .line 437
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_4
    if-eqz v13, :cond_5

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 442
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzu()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzt()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 444
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    .line 445
    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 446
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 447
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzat;->zzy:Lcom/google/android/gms/measurement/internal/zzem;

    .line 448
    invoke-virtual {v5, v14}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 449
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_5

    .line 452
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v3

    .line 453
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzex;->zzv()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v3

    const-string v4, "Fetching config for blacklisted app"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    .line 454
    invoke-direct {v1, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    :cond_5
    return-void

    .line 456
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzma;->zzb()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 457
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v6

    .line 458
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzat;->zzcd:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 459
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Lcom/google/android/gms/measurement/internal/zzar;)Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v2

    .line 461
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v6

    .line 463
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v7

    .line 464
    invoke-virtual {v7, v15}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Ljava/lang/String;)I

    move-result v7

    .line 465
    invoke-virtual {v6, v2, v7}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Lcom/google/android/gms/measurement/internal/zzfb;I)V

    .line 466
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    .line 468
    :cond_7
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v6

    const/4 v7, 0x2

    .line 469
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzex;->zza(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 471
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v6

    .line 472
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    const-string v8, "Logging event"

    .line 473
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v9

    .line 474
    invoke-virtual {v9, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Lcom/google/android/gms/measurement/internal/zzar;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 475
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzac;->zze()V

    .line 476
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    .line 477
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmh;->zzb()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 478
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v6

    .line 479
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzat;->zzcc:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    goto :goto_0

    :cond_9
    const/4 v6, 0x0

    :goto_0
    const-string v8, "ecommerce_purchase"

    .line 480
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    .line 481
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    if-eqz v6, :cond_a

    const-string v6, "purchase"

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    .line 482
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "refund"

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    .line 483
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_1

    :cond_a
    const/4 v6, 0x0

    goto :goto_2

    :cond_b
    :goto_1
    const/4 v6, 0x1

    :goto_2
    const-string v8, "_iap"

    .line 484
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    .line 485
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    if-eqz v6, :cond_c

    goto :goto_3

    :cond_c
    const/4 v8, 0x0

    goto :goto_4

    :cond_d
    :goto_3
    const/4 v8, 0x1

    :goto_4
    if-eqz v8, :cond_18

    .line 488
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    const-string v9, "currency"

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v6, :cond_10

    .line 490
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    const-string v9, "value"

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzc(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide v16, 0x412e848000000000L    # 1000000.0

    mul-double v9, v9, v16

    const-wide/16 v18, 0x0

    cmpl-double v6, v9, v18

    if-nez v6, :cond_e

    .line 492
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    const-string v9, "value"

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v16

    :cond_e
    const-wide/high16 v16, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v6, v9, v16

    if-gtz v6, :cond_f

    const-wide/high16 v16, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v6, v9, v16

    if-ltz v6, :cond_f

    .line 494
    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    .line 495
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmh;->zzb()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 496
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v6

    .line 497
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzat;->zzcc:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string v6, "refund"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    .line 498
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    neg-long v9, v9

    goto :goto_5

    .line 501
    :cond_f
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v6

    .line 502
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    const-string v7, "Data lost. Currency value is too big. appId"

    .line 503
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 504
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 505
    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/16 v16, 0x1

    goto/16 :goto_c

    .line 508
    :cond_10
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    const-string v9, "value"

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 509
    :cond_11
    :goto_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 510
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "[A-Z]{3}"

    .line 511
    invoke-virtual {v6, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    const-string v8, "_ltv_"

    .line 512
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_12

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_12
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    move-object v11, v6

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v6

    invoke-virtual {v6, v15, v11}, Lcom/google/android/gms/measurement/internal/zzac;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzky;

    move-result-object v6

    if-eqz v6, :cond_14

    .line 514
    iget-object v8, v6, Lcom/google/android/gms/measurement/internal/zzky;->zze:Ljava/lang/Object;

    instance-of v8, v8, Ljava/lang/Long;

    if-nez v8, :cond_13

    goto :goto_7

    .line 533
    :cond_13
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzky;->zze:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 534
    new-instance v16, Lcom/google/android/gms/measurement/internal/zzky;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzar;->zzc:Ljava/lang/String;

    .line 535
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v12

    .line 536
    invoke-interface {v12}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v18

    add-long/2addr v6, v9

    .line 537
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v6, v16

    move-object v7, v15

    move-object v9, v11

    move-wide/from16 v10, v18

    const/4 v14, 0x1

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/measurement/internal/zzky;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v14, v16

    const/16 v16, 0x1

    goto :goto_a

    :cond_14
    :goto_7
    const/4 v14, 0x1

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v6

    .line 516
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v8

    .line 518
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzat;->zzad:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v8, v15, v12}, Lcom/google/android/gms/measurement/internal/zzy;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)I

    move-result v8

    sub-int/2addr v8, v14

    .line 520
    invoke-static {v15}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 521
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 522
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzkm;->zzaj()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    :try_start_2
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzac;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-string v7, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v14, 0x3

    .line 524
    new-array v14, v14, [Ljava/lang/String;

    aput-object v15, v14, v13
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v16, 0x1

    :try_start_3
    aput-object v15, v14, v16

    .line 525
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/16 v17, 0x2

    aput-object v8, v14, v17

    .line 526
    invoke-virtual {v12, v7, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    const/16 v16, 0x1

    :goto_8
    move-object v7, v0

    .line 529
    :try_start_4
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    const-string v8, "Error pruning currencies. appId"

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v8, v12, v7}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 530
    :goto_9
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzky;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzar;->zzc:Ljava/lang/String;

    .line 531
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    .line 532
    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v19

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v6, v14

    move-object v7, v15

    move-object v9, v11

    move-wide/from16 v10, v19

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/measurement/internal/zzky;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 538
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v6

    invoke-virtual {v6, v14}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzky;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 540
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v6

    .line 541
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    const-string v7, "Too many unique user properties are set. Ignoring user property. appId"

    .line 542
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 543
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v9

    .line 544
    iget-object v10, v14, Lcom/google/android/gms/measurement/internal/zzky;->zzc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzev;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v14, Lcom/google/android/gms/measurement/internal/zzky;->zze:Ljava/lang/Object;

    .line 545
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 547
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v6

    const/16 v8, 0x9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v15

    .line 549
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_b

    :cond_15
    const/16 v16, 0x1

    goto :goto_b

    :cond_16
    const/16 v16, 0x1

    :cond_17
    :goto_b
    const/4 v6, 0x1

    :goto_c
    if-nez v6, :cond_19

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    return-void

    :cond_18
    const/16 v16, 0x1

    .line 555
    :cond_19
    :try_start_5
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Ljava/lang/String;)Z

    move-result v17

    const-string v6, "_err"

    .line 556
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 558
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmh;->zzb()Z

    move-result v6

    const-wide/16 v20, 0x1

    if-eqz v6, :cond_1a

    .line 559
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v6

    .line 560
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzat;->zzby:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 562
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    .line 563
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Lcom/google/android/gms/measurement/internal/zzam;)J

    move-result-wide v6

    add-long v6, v6, v20

    move-wide v10, v6

    goto :goto_d

    :cond_1a
    move-wide/from16 v10, v20

    .line 565
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v6

    .line 566
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzy()J

    move-result-wide v7

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/16 v22, 0x0

    move-object v9, v15

    move/from16 v13, v17

    move-object/from16 p1, v15

    move/from16 v15, v19

    move/from16 v16, v22

    .line 567
    invoke-virtual/range {v6 .. v16}, Lcom/google/android/gms/measurement/internal/zzac;->zza(JLjava/lang/String;JZZZZZ)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v6

    .line 568
    iget-wide v7, v6, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:J

    .line 569
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzat;->zzj:Lcom/google/android/gms/measurement/internal/zzem;

    const/4 v15, 0x0

    .line 570
    invoke-virtual {v9, v15}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 571
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    const-wide/16 v13, 0x0

    cmp-long v11, v7, v13

    if-lez v11, :cond_1c

    .line 574
    rem-long/2addr v7, v9

    cmp-long v2, v7, v20

    if-nez v2, :cond_1b

    .line 576
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v2

    .line 577
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    .line 578
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v6, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:J

    .line 579
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 580
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 581
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 582
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    return-void

    :cond_1c
    if-eqz v17, :cond_1e

    .line 585
    :try_start_6
    iget-wide v7, v6, Lcom/google/android/gms/measurement/internal/zzaf;->zza:J

    .line 586
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzat;->zzl:Lcom/google/android/gms/measurement/internal/zzem;

    .line 587
    invoke-virtual {v11, v15}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 588
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v11, v11

    sub-long/2addr v7, v11

    cmp-long v11, v7, v13

    if-lez v11, :cond_1e

    .line 591
    rem-long/2addr v7, v9

    cmp-long v3, v7, v20

    if-nez v3, :cond_1d

    .line 593
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v3

    .line 594
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    .line 595
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v6, Lcom/google/android/gms/measurement/internal/zzaf;->zza:J

    .line 596
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 597
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 599
    :cond_1d
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v6

    const/16 v8, 0x10

    const-string v9, "_ev"

    .line 600
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v7, p1

    .line 601
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 602
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    return-void

    :cond_1e
    if-eqz v19, :cond_20

    .line 606
    :try_start_7
    iget-wide v7, v6, Lcom/google/android/gms/measurement/internal/zzaf;->zzd:J

    .line 607
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v9

    .line 608
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 609
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzat;->zzk:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzy;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)I

    move-result v9

    const v10, 0xf4240

    .line 610
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v11, 0x0

    .line 611
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-long v9, v9

    sub-long/2addr v7, v9

    cmp-long v9, v7, v13

    if-lez v9, :cond_21

    cmp-long v2, v7, v20

    if-nez v2, :cond_1f

    .line 616
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v2

    .line 617
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    .line 618
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v6, Lcom/google/android/gms/measurement/internal/zzaf;->zzd:J

    .line 619
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 620
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 621
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    return-void

    :cond_20
    const/4 v11, 0x0

    .line 624
    :cond_21
    :try_start_8
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzb()Landroid/os/Bundle;

    move-result-object v12

    .line 626
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v6

    const-string v7, "_o"

    .line 627
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzar;->zzc:Ljava/lang/String;

    invoke-virtual {v6, v12, v7, v8}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 629
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v6

    move-object/from16 v10, p1

    .line 630
    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzkx;->zze(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 632
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v6

    const-string v7, "_dbg"

    .line 633
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v12, v7, v8}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 635
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v6

    const-string v7, "_r"

    .line 636
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v12, v7, v8}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_22
    const-string v6, "_s"

    .line 637
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v8, "_sno"

    .line 640
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzac;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzky;

    move-result-object v6

    if-eqz v6, :cond_23

    .line 641
    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzky;->zze:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Long;

    if-eqz v7, :cond_23

    .line 643
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v7

    const-string v8, "_sno"

    .line 644
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzky;->zze:Ljava/lang/Object;

    invoke-virtual {v7, v12, v8, v6}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 645
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzac;->zzc(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v8, v6, v13

    if-lez v8, :cond_24

    .line 648
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v8

    .line 649
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v8

    const-string v9, "Data lost. Too many events stored on disk, deleted. appId"

    .line 650
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 651
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 652
    invoke-virtual {v8, v9, v11, v6}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 653
    :cond_24
    new-instance v11, Lcom/google/android/gms/measurement/internal/zzak;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzar;->zzc:Ljava/lang/String;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    iget-wide v13, v2, Lcom/google/android/gms/measurement/internal/zzar;->zzd:J

    const-wide/16 v20, 0x0

    move-object v6, v11

    move-object v2, v9

    move-object v9, v10

    move-wide/from16 v23, v4

    move-object v4, v10

    move-object v10, v2

    move-object v5, v11

    move-object v2, v12

    const/16 v22, 0x0

    move-wide v11, v13

    move-wide/from16 v13, v20

    move-object/from16 p1, v15

    move-object v15, v2

    invoke-direct/range {v6 .. v15}, Lcom/google/android/gms/measurement/internal/zzak;-><init>(Lcom/google/android/gms/measurement/internal/zzgb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 654
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzak;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    if-nez v2, :cond_26

    .line 656
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzac;->zzh(Ljava/lang/String;)J

    move-result-wide v6

    .line 658
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    .line 659
    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzy;->zzb(Ljava/lang/String;)I

    move-result v2

    int-to-long v8, v2

    cmp-long v2, v6, v8

    if-ltz v2, :cond_25

    if-eqz v17, :cond_25

    .line 661
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v2

    .line 662
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    const-string v3, "Too many event names used, ignoring event. appId, name, supported count"

    .line 663
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 664
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v7

    .line 665
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzak;->zzb:Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 666
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v7

    .line 667
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/zzy;->zzb(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 668
    invoke-virtual {v2, v3, v6, v5, v7}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 670
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v6

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v4

    .line 672
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    return-void

    .line 675
    :cond_25
    :try_start_9
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzan;

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzak;->zzb:Ljava/lang/String;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    iget-wide v13, v5, Lcom/google/android/gms/measurement/internal/zzak;->zzc:J

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v6, v2

    move-object v7, v4

    invoke-direct/range {v6 .. v20}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_e

    .line 677
    :cond_26
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    iget-wide v6, v2, Lcom/google/android/gms/measurement/internal/zzan;->zzf:J

    invoke-virtual {v5, v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzak;->zza(Lcom/google/android/gms/measurement/internal/zzgb;J)Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v11

    .line 678
    iget-wide v4, v11, Lcom/google/android/gms/measurement/internal/zzak;->zzc:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzan;->zza(J)Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    move-object v5, v11

    .line 679
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzan;)V

    .line 681
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzn()V

    .line 683
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/zzak;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 686
    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/zzak;->zza:Ljava/lang/String;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 687
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzbh()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v2

    const-string v6, "android"

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v2

    .line 688
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_27

    .line 689
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 690
    :cond_27
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_28

    .line 691
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 692
    :cond_28
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_29

    .line 693
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 694
    :cond_29
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    const-wide/32 v8, -0x80000000

    cmp-long v10, v6, v8

    if-eqz v10, :cond_2a

    .line 695
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    long-to-int v7, v6

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzh(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 696
    :cond_2a
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zze:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzf(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 697
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 698
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 699
    :cond_2b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 700
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v6

    .line 701
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 702
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 703
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzw:Ljava/lang/String;

    .line 704
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzad;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzad;->zzb(Lcom/google/android/gms/measurement/internal/zzad;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v6

    .line 705
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzw:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2c

    .line 706
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzad;->zza()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 707
    :cond_2c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznq;->zzb()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 708
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v6

    .line 709
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzat;->zzbj:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 710
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzo()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2d

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2d

    .line 711
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 712
    :cond_2d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzo()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 713
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzs()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2f

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    .line 714
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2f

    .line 715
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_f

    .line 716
    :cond_2e
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzo()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2f

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2f

    .line 717
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 718
    :cond_2f
    :goto_f
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzf:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_30

    .line 719
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzf:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzh(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 720
    :cond_30
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzt:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzk(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 721
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzkt;->zze()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_31

    .line 723
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 724
    :cond_31
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 725
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzw:Ljava/lang/String;

    .line 726
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzad;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzad;->zzb(Lcom/google/android/gms/measurement/internal/zzad;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v6

    .line 727
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v7

    if-eqz v7, :cond_32

    .line 728
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v7

    .line 729
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 730
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzad;->zzc()Z

    move-result v7

    if-eqz v7, :cond_37

    .line 732
    :cond_32
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzj:Lcom/google/android/gms/measurement/internal/zzjv;

    .line 733
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 734
    invoke-virtual {v7, v10, v6}, Lcom/google/android/gms/measurement/internal/zzjv;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzad;)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_33

    .line 735
    iget-object v10, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_33

    .line 736
    iget-boolean v10, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzo:Z

    if-eqz v10, :cond_37

    .line 737
    iget-object v10, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 738
    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v10, :cond_37

    .line 739
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Z)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto/16 :goto_11

    .line 741
    :cond_33
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zzw()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    .line 743
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgb;->zzm()Landroid/content/Context;

    move-result-object v10

    .line 744
    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_37

    iget-boolean v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzp:Z

    if-eqz v7, :cond_37

    .line 745
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzb()Z

    move-result v7

    if-eqz v7, :cond_34

    .line 746
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v7

    .line 747
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzat;->zzcn:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v7

    if-nez v7, :cond_37

    .line 749
    :cond_34
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zzm()Landroid/content/Context;

    move-result-object v7

    .line 750
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "android_id"

    .line 751
    invoke-static {v7, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_35

    .line 754
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v7

    .line 755
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v7

    const-string v10, "null secure ID. appId"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "null"

    goto :goto_10

    .line 757
    :cond_35
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_36

    .line 759
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v10

    .line 760
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v10

    const-string v11, "empty secure ID. appId"

    .line 761
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 762
    :cond_36
    :goto_10
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 764
    :cond_37
    :goto_11
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zzw()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    .line 765
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgx;->zzaa()V

    .line 766
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 767
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v7

    .line 768
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgb;->zzw()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v10

    .line 769
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgx;->zzaa()V

    .line 770
    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 771
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v7

    .line 772
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgb;->zzw()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v10

    .line 773
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzal;->zze()J

    move-result-wide v10

    long-to-int v11, v10

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzf(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v7

    .line 774
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgb;->zzw()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v10

    .line 775
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzal;->zzf()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 777
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v7

    .line 778
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzat;->zzcf:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v7

    if-nez v7, :cond_38

    .line 779
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzl:J

    invoke-virtual {v2, v10, v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 780
    :cond_38
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zzaa()Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 781
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v7

    if-eqz v7, :cond_39

    .line 782
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v7

    .line 783
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 784
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    goto :goto_12

    .line 785
    :cond_39
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    .line 786
    :goto_12
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3a

    move-object/from16 v7, p1

    .line 787
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 788
    :cond_3a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v7

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v7

    if-nez v7, :cond_3f

    .line 790
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzf;

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-direct {v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzgb;Ljava/lang/String;)V

    .line 791
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v10

    if-eqz v10, :cond_3b

    .line 792
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v10

    .line 793
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v10

    if-eqz v10, :cond_3b

    .line 794
    invoke-direct {v1, v6}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzad;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)V

    goto :goto_13

    .line 795
    :cond_3b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzz()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)V

    .line 796
    :goto_13
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzk:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzf;->zzf(Ljava/lang/String;)V

    .line 797
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(Ljava/lang/String;)V

    .line 798
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 799
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v10

    .line 800
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 801
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzad;->zzc()Z

    move-result v10

    if-eqz v10, :cond_3d

    .line 803
    :cond_3c
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzj:Lcom/google/android/gms/measurement/internal/zzjv;

    .line 804
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzjv;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 805
    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzf;->zze(Ljava/lang/String;)V

    .line 806
    :cond_3d
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzf;->zzg(J)V

    .line 807
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzf;->zza(J)V

    .line 808
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(J)V

    .line 809
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzf;->zzg(Ljava/lang/String;)V

    .line 810
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzc(J)V

    .line 811
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzf;->zzh(Ljava/lang/String;)V

    .line 812
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzn;->zze:J

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzd(J)V

    .line 813
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzf:J

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zzf;->zze(J)V

    .line 814
    iget-boolean v10, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Z)V

    .line 816
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v10

    .line 817
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzat;->zzcf:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v10

    if-nez v10, :cond_3e

    .line 818
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzl:J

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzp(J)V

    .line 819
    :cond_3e
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzt:J

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzf(J)V

    .line 820
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    .line 821
    :cond_3f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v10

    if-eqz v10, :cond_40

    .line 822
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v10

    .line 823
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v10

    if-eqz v10, :cond_40

    .line 824
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzad;->zze()Z

    move-result v6

    if-eqz v6, :cond_41

    .line 825
    :cond_40
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzd()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_41

    .line 826
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 827
    :cond_41
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzi()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_42

    .line 828
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzi()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 829
    :cond_42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v6

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    .line 830
    :goto_14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_43

    .line 831
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzj()Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v7

    .line 832
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzky;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzky;->zzc:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v7

    .line 833
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzky;

    iget-wide v10, v10, Lcom/google/android/gms/measurement/internal/zzky;->zzd:J

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v7

    .line 834
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    move-result-object v10

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zzky;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzky;->zze:Ljava/lang/Object;

    invoke-virtual {v10, v7, v11}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;Ljava/lang/Object;)V

    .line 835
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 838
    :cond_43
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg;)J

    move-result-wide v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 847
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v6

    .line 848
    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzak;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    if-eqz v7, :cond_46

    .line 849
    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzak;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzam;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_44
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_45

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "_r"

    .line 850
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44

    goto :goto_15

    .line 853
    :cond_45
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc()Lcom/google/android/gms/measurement/internal/zzfv;

    move-result-object v7

    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/zzak;->zza:Ljava/lang/String;

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/zzak;->zzb:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zzfv;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 855
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v10

    .line 856
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzy()J

    move-result-wide v11

    iget-object v13, v5, Lcom/google/android/gms/measurement/internal/zzak;->zza:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v10 .. v18}, Lcom/google/android/gms/measurement/internal/zzac;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v10

    if-eqz v7, :cond_46

    .line 857
    iget-wide v10, v10, Lcom/google/android/gms/measurement/internal/zzaf;->zze:J

    .line 858
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v7

    .line 859
    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/zzak;->zza:Ljava/lang/String;

    invoke-virtual {v7, v12}, Lcom/google/android/gms/measurement/internal/zzy;->zzc(Ljava/lang/String;)I

    move-result v7

    int-to-long v12, v7

    cmp-long v7, v10, v12

    if-gez v7, :cond_46

    goto :goto_15

    :cond_46
    const/4 v4, 0x0

    .line 860
    :goto_15
    invoke-virtual {v6, v5, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzak;JZ)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 861
    iput-wide v8, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzn:J

    goto :goto_16

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 842
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v4

    .line 843
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v4

    const-string v5, "Data loss. Failed to insert raw event metadata. appId"

    .line 844
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 845
    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 862
    :cond_47
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 863
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    .line 867
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzab()V

    .line 869
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v2

    .line 870
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    const-string v3, "Background event processing time, ms"

    .line 871
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v23

    const-wide/32 v6, 0x7a120

    add-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 872
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    .line 866
    throw v2

    return-void
.end method

.method private final zze(Lcom/google/android/gms/measurement/internal/zzn;)Z
    .locals 5

    .line 3173
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznq;->zzb()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3174
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 3175
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzat;->zzbj:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3176
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    .line 3177
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    .line 3178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2

    .line 3180
    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2
.end method

.method private final zzv()Lcom/google/android/gms/measurement/internal/zzfh;
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zze:Lcom/google/android/gms/measurement/internal/zzfh;

    if-eqz v0, :cond_0

    return-object v0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzw()Lcom/google/android/gms/measurement/internal/zzkl;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzf:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzb(Lcom/google/android/gms/measurement/internal/zzkm;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzf:Lcom/google/android/gms/measurement/internal/zzkl;

    return-object v0
.end method

.method private final zzx()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    return-void
.end method

.method private final zzy()J
    .locals 8

    .line 182
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 183
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 184
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzaa()V

    .line 187
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 188
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzfj;->zzg:Lcom/google/android/gms/measurement/internal/zzfn;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfn;->zza()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const-wide/16 v3, 0x1

    .line 190
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzo()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzkx;->zzg()Ljava/security/SecureRandom;

    move-result-object v5

    const v6, 0x5265c00

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 191
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfj;->zzg:Lcom/google/android/gms/measurement/internal/zzfn;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzfn;->zza(J)V

    :cond_0
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    .line 194
    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzz()Ljava/lang/String;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    .line 880
    new-array v0, v0, [B

    .line 882
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v1

    .line 883
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkx;->zzg()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 884
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%032x"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v0, 0x0

    aput-object v5, v4, v0

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;
    .locals 3

    .line 168
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzad;->zza:Lcom/google/android/gms/measurement/internal/zzad;

    .line 169
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v1

    .line 171
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 173
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzn()V

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzz:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzad;

    if-nez v0, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v0

    if-nez v0, :cond_0

    .line 178
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzad;->zza:Lcom/google/android/gms/measurement/internal/zzad;

    .line 179
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzad;)V

    :cond_1
    return-object v0
.end method

.method protected final zza()V
    .locals 5

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzu()V

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v0

    .line 93
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfj;->zzc:Lcom/google/android/gms/measurement/internal/zzfn;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfn;->zza()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v0

    .line 96
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfj;->zzc:Lcom/google/android/gms/measurement/internal/zzfn;

    .line 97
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 98
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfn;->zza(J)V

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzab()V

    return-void
.end method

.method final zza(ILjava/lang/Throwable;[BLjava/lang/String;)V
    .locals 8

    .line 1877
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 1878
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzn()V

    const/4 p4, 0x0

    if-nez p3, :cond_0

    .line 1880
    :try_start_0
    new-array p3, p4, [B

    .line 1881
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzw:Ljava/util/List;

    const/4 v1, 0x0

    .line 1882
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzw:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_6

    :cond_1
    if-nez p2, :cond_6

    .line 1885
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object p2

    .line 1886
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzfj;->zzc:Lcom/google/android/gms/measurement/internal/zzfn;

    .line 1887
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 1888
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfn;->zza(J)V

    .line 1890
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object p2

    .line 1891
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzfj;->zzd:Lcom/google/android/gms/measurement/internal/zzfn;

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfn;->zza(J)V

    .line 1892
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzab()V

    .line 1894
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p2

    .line 1895
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p2

    const-string v2, "Successful upload. Got network response. code, size"

    .line 1896
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v2, p1, p3}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1897
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zze()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1898
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1899
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1900
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 1901
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzkm;->zzaj()V

    .line 1902
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzac;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1903
    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, p4
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v6, "queue"

    const-string v7, "rowid=?"

    .line 1904
    invoke-virtual {v0, v6, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 1906
    :cond_2
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v2, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception v0

    .line 1909
    :try_start_5
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p3

    const-string v2, "Failed to delete a bundle in a queue table"

    invoke-virtual {p3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1910
    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception p3

    .line 1912
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzx:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzx:Ljava/util/List;

    .line 1913
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 1914
    :cond_3
    throw p3

    .line 1915
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1916
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    .line 1920
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzx:Ljava/util/List;

    .line 1921
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzd()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfa;->zze()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzaa()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1922
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzo()V

    goto :goto_1

    :cond_5
    const-wide/16 p1, -0x1

    .line 1923
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzy:J

    .line 1924
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzab()V

    .line 1925
    :goto_1
    iput-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzn:J

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    .line 1918
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    .line 1919
    throw p1
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_2
    move-exception p1

    .line 1929
    :try_start_8
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p2

    .line 1930
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1932
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    .line 1933
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzn:J

    .line 1935
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    .line 1936
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzn:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 1939
    :cond_6
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p3

    .line 1940
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p3

    const-string v1, "Network upload failed. Will retry later. code, error"

    .line 1941
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1943
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object p2

    .line 1944
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzfj;->zzd:Lcom/google/android/gms/measurement/internal/zzfn;

    .line 1945
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    .line 1946
    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfn;->zza(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_8

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :cond_8
    :goto_2
    if-eqz v3, :cond_9

    .line 1950
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object p1

    .line 1951
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfj;->zze:Lcom/google/android/gms/measurement/internal/zzfn;

    .line 1952
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    .line 1953
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzfn;->zza(J)V

    .line 1954
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/util/List;)V

    .line 1955
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzab()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1956
    :goto_3
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzs:Z

    .line 1957
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzac()V

    return-void

    :catchall_1
    move-exception p1

    .line 1959
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzs:Z

    .line 1960
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzac()V

    .line 1961
    throw p1

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 272
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzn()V

    .line 276
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 277
    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzar;->zzd:J

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 280
    :cond_0
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v4, :cond_1

    .line 281
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    return-void

    .line 283
    :cond_1
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzu:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 284
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 285
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzb()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "ga_safelisted"

    const-wide/16 v6, 0x1

    .line 286
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 287
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzar;

    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzam;

    invoke-direct {v15, v4}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Landroid/os/Bundle;)V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzar;->zzc:Ljava/lang/String;

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzar;->zzd:J

    move-object v13, v5

    move-object/from16 v16, v4

    move-wide/from16 v17, v6

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzam;Ljava/lang/String;J)V

    move-object v0, v5

    goto :goto_0

    .line 290
    :cond_2
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v2

    .line 291
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzex;->zzv()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    const-string v4, "Dropping non-safelisted event. appId, event name, origin"

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzar;->zzc:Ljava/lang/String;

    .line 292
    invoke-virtual {v2, v4, v3, v5, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 294
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzac;->zze()V

    .line 296
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v4

    .line 297
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 299
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkm;->zzaj()V

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    cmp-long v8, v11, v6

    if-gez v8, :cond_4

    .line 301
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v4

    .line 302
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v4

    const-string v8, "Invalid time querying timed out conditional properties"

    .line 303
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 304
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 305
    invoke-virtual {v4, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 306
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    :cond_4
    const-string v8, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    .line 308
    new-array v9, v5, [Ljava/lang/String;

    aput-object v3, v9, v13

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v14

    .line 309
    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 310
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzw;

    if-eqz v8, :cond_5

    .line 313
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v9

    .line 314
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v9

    const-string v10, "User property timed out"

    iget-object v15, v8, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    .line 315
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzgb;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v14

    .line 316
    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/gms/measurement/internal/zzev;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    .line 317
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzkw;->zza()Ljava/lang/Object;

    move-result-object v14

    .line 318
    invoke-virtual {v9, v10, v15, v13, v14}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 319
    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzw;->zzg:Lcom/google/android/gms/measurement/internal/zzar;

    if-eqz v9, :cond_6

    .line 320
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzar;

    iget-object v10, v8, Lcom/google/android/gms/measurement/internal/zzw;->zzg:Lcom/google/android/gms/measurement/internal/zzar;

    invoke-direct {v9, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Lcom/google/android/gms/measurement/internal/zzar;J)V

    invoke-direct {v1, v9, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 321
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v9

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    invoke-virtual {v9, v3, v8}, Lcom/google/android/gms/measurement/internal/zzac;->zze(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto :goto_2

    .line 324
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v4

    .line 325
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 327
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkm;->zzaj()V

    cmp-long v8, v11, v6

    if-gez v8, :cond_8

    .line 329
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v4

    .line 330
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v4

    const-string v8, "Invalid time querying expired conditional properties"

    .line 331
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 332
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 333
    invoke-virtual {v4, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 334
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_3

    :cond_8
    const-string v8, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    .line 336
    new-array v9, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v9, v13

    .line 337
    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 339
    :goto_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 340
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzw;

    if-eqz v9, :cond_9

    .line 343
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v10

    .line 344
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v10

    const-string v13, "User property expired"

    iget-object v14, v9, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    .line 345
    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzgb;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v15

    .line 346
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    invoke-virtual {v15, v5}, Lcom/google/android/gms/measurement/internal/zzev;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v15, v9, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    .line 347
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzkw;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 348
    invoke-virtual {v10, v13, v14, v5, v15}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v5

    iget-object v10, v9, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    invoke-virtual {v5, v3, v10}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzw;->zzk:Lcom/google/android/gms/measurement/internal/zzar;

    if-eqz v5, :cond_a

    .line 351
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzw;->zzk:Lcom/google/android/gms/measurement/internal/zzar;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v5

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    invoke-virtual {v5, v3, v9}, Lcom/google/android/gms/measurement/internal/zzac;->zze(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    goto :goto_4

    .line 354
    :cond_b
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_c

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzar;

    .line 355
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzar;

    invoke-direct {v10, v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Lcom/google/android/gms/measurement/internal/zzar;J)V

    invoke-direct {v1, v10, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_5

    .line 358
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    .line 359
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 361
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 362
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkm;->zzaj()V

    cmp-long v8, v11, v6

    if-gez v8, :cond_d

    .line 364
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v6

    .line 365
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    const-string v7, "Invalid time querying triggered conditional properties"

    .line 366
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 367
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzn()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 368
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 369
    invoke-virtual {v6, v7, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 370
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v13, 0x0

    goto :goto_6

    :cond_d
    const-string v6, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v7, 0x3

    .line 372
    new-array v7, v7, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v3, v7, v13

    const/4 v3, 0x1

    aput-object v5, v7, v3

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v7, v5

    .line 373
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 375
    :goto_6
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 376
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/google/android/gms/measurement/internal/zzw;

    if-eqz v15, :cond_e

    .line 378
    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    .line 379
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzky;

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    .line 380
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkw;->zza()Ljava/lang/Object;

    move-result-object v16

    move-object v4, v10

    move-wide v8, v11

    move-object v13, v10

    move-object/from16 v10, v16

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzky;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzky;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 384
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v4

    .line 385
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v4

    const-string v5, "User property triggered"

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    .line 386
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v7

    .line 387
    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzky;->zzc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzev;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzky;->zze:Ljava/lang/Object;

    .line 388
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 390
    :cond_f
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v4

    .line 391
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v4

    const-string v5, "Too many active user properties, ignoring"

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    .line 392
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 393
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v7

    .line 394
    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzky;->zzc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzev;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzky;->zze:Ljava/lang/Object;

    .line 395
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 396
    :goto_8
    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzw;->zzi:Lcom/google/android/gms/measurement/internal/zzar;

    if-eqz v4, :cond_10

    .line 397
    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzw;->zzi:Lcom/google/android/gms/measurement/internal/zzar;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_10
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-direct {v4, v13}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Lcom/google/android/gms/measurement/internal/zzky;)V

    iput-object v4, v15, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    const/4 v4, 0x1

    .line 399
    iput-boolean v4, v15, Lcom/google/android/gms/measurement/internal/zzw;->zze:Z

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzw;)Z

    const/4 v13, 0x0

    goto/16 :goto_7

    .line 402
    :cond_11
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 403
    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_12

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzar;

    .line 404
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzar;

    invoke-direct {v5, v4, v11, v12}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Lcom/google/android/gms/measurement/internal/zzar;J)V

    invoke-direct {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_9

    .line 406
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    return-void

    :catchall_0
    move-exception v0

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    .line 410
    throw v0

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzar;Ljava/lang/String;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 196
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    .line 201
    :cond_0
    invoke-direct {v0, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzb(Lcom/google/android/gms/measurement/internal/zzf;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "_ui"

    .line 203
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 205
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v4

    .line 206
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v4

    const-string v5, "Could not find package. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 209
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    const-string v2, "App version does not match; dropping event. appId"

    .line 211
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 212
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 214
    :cond_2
    :goto_0
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzn;

    .line 215
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzl()Ljava/lang/String;

    move-result-object v5

    .line 217
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzm()J

    move-result-wide v6

    .line 218
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Ljava/lang/String;

    move-result-object v8

    .line 219
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()J

    move-result-wide v9

    .line 220
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzp()J

    move-result-wide v11

    .line 221
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzr()Z

    move-result v14

    const/16 v16, 0x0

    .line 222
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzi()Ljava/lang/String;

    move-result-object v17

    .line 223
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzae()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    .line 224
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()Z

    move-result v23

    .line 225
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzag()Z

    move-result v24

    const/16 v25, 0x0

    .line 226
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()Ljava/lang/String;

    move-result-object v26

    .line 227
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzah()Ljava/lang/Boolean;

    move-result-object v27

    .line 228
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzq()J

    move-result-wide v28

    .line 229
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzai()Ljava/util/List;

    move-result-object v30

    .line 230
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznq;->zzb()Z

    move-result v31

    if-eqz v31, :cond_3

    .line 231
    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v13

    .line 232
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v1

    move/from16 v32, v14

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzat;->zzbj:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v13, v1, v14}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 233
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzg()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move/from16 v32, v14

    :cond_4
    const/4 v1, 0x0

    .line 235
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 236
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    .line 237
    sget-object v13, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v2, v13}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 238
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzad;->zza()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v33, v2

    goto :goto_2

    :cond_5
    const-string v2, ""

    move-object/from16 v33, v2

    :goto_2
    move-object v2, v15

    move-object/from16 v3, p2

    const/4 v13, 0x0

    move/from16 v14, v32

    move-object/from16 v34, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-wide/from16 v27, v28

    move-object/from16 v29, v30

    move-object/from16 v30, v1

    move-object/from16 v31, v33

    .line 239
    invoke-direct/range {v2 .. v31}, Lcom/google/android/gms/measurement/internal/zzn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v34

    move-object/from16 v1, p1

    .line 240
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzb(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    return-void

    .line 198
    :cond_6
    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v1

    .line 199
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zzv()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzkm;)V
    .locals 0

    .line 2564
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzp:I

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzkw;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 12

    .line 2428
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 2429
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzn()V

    .line 2430
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zze(Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2432
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v0, :cond_1

    .line 2433
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    return-void

    .line 2436
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v0

    .line 2437
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkx;->zzb(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-eqz v4, :cond_3

    .line 2440
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    .line 2441
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    .line 2443
    invoke-static {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    .line 2444
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v7, p1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 2446
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v2

    .line 2447
    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v5, "_ev"

    .line 2448
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 2451
    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v3

    .line 2452
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkw;->zza()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzkx;->zzb(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v8

    if-eqz v8, :cond_6

    .line 2455
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    .line 2456
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    .line 2458
    invoke-static {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v10

    .line 2459
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkw;->zza()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2461
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_4

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    .line 2462
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2463
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v11, v0

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    .line 2465
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v6

    .line 2466
    iget-object v7, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v9, "_ev"

    .line 2467
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 2470
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v0

    .line 2471
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    .line 2472
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkw;->zza()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v1, "_sid"

    .line 2475
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2476
    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzkw;->zzb:J

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 2479
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v3

    iget-object v6, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v8, "_sno"

    .line 2480
    invoke-virtual {v3, v6, v8}, Lcom/google/android/gms/measurement/internal/zzac;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzky;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 2481
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzky;->zze:Ljava/lang/Object;

    instance-of v8, v6, Ljava/lang/Long;

    if-eqz v8, :cond_8

    .line 2482
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    .line 2485
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v6

    .line 2486
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    const-string v8, "Retrieved last session number from database does not contain a valid (long) value"

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzky;->zze:Ljava/lang/Object;

    .line 2487
    invoke-virtual {v6, v8, v3}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2489
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v3

    iget-object v6, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v8, "_s"

    .line 2490
    invoke-virtual {v3, v6, v8}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 2492
    iget-wide v1, v3, Lcom/google/android/gms/measurement/internal/zzan;->zzc:J

    .line 2494
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v3

    .line 2495
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v3

    const-string v6, "Backfill the session number. Last used session number"

    .line 2496
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    :goto_2
    const-wide/16 v8, 0x1

    add-long/2addr v1, v8

    .line 2498
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzkw;

    const-string v3, "_sno"

    .line 2499
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2500
    invoke-virtual {p0, v8, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzkw;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 2501
    :cond_b
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzky;

    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    iget-wide v7, p1, Lcom/google/android/gms/measurement/internal/zzkw;->zzb:J

    move-object v3, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzky;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 2503
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    .line 2504
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string v2, "Setting user property"

    .line 2505
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v3

    .line 2506
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzky;->zzc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzev;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2507
    invoke-virtual {p1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2508
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zze()V

    .line 2509
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    .line 2510
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzky;)Z

    move-result p1

    .line 2511
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V

    if-nez p1, :cond_c

    .line 2514
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    .line 2515
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    .line 2516
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    .line 2517
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzky;->zzc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzky;->zze:Ljava/lang/Object;

    .line 2518
    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2520
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v0

    .line 2521
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2522
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2523
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    return-void

    :catchall_0
    move-exception p1

    .line 2525
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    .line 2526
    throw p1
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 7

    .line 2399
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzw:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzx:Ljava/util/List;

    .line 2401
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzx:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzw:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2402
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 2403
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2404
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 2405
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkm;->zzaj()V

    .line 2406
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x1

    .line 2407
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v5, "apps"

    const-string v6, "app_id=?"

    .line 2408
    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v4

    const-string v4, "events"

    const-string v6, "app_id=?"

    .line 2409
    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "user_attributes"

    const-string v6, "app_id=?"

    .line 2410
    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "conditional_properties"

    const-string v6, "app_id=?"

    .line 2411
    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "raw_events"

    const-string v6, "app_id=?"

    .line 2412
    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "raw_events_metadata"

    const-string v6, "app_id=?"

    .line 2413
    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "queue"

    const-string v6, "app_id=?"

    .line 2414
    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "audience_filter_values"

    const-string v6, "app_id=?"

    .line 2415
    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "main_event_params"

    const-string v6, "app_id=?"

    .line 2416
    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "default_event_params"

    const-string v6, "app_id=?"

    .line 2417
    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v5, v2

    if-lez v5, :cond_1

    .line 2419
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2422
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    .line 2423
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    const-string v3, "Error resetting analytics data. appId, error"

    .line 2424
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2425
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-eqz v0, :cond_2

    .line 2426
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzb(Lcom/google/android/gms/measurement/internal/zzn;)V

    :cond_2
    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzw;)V
    .locals 1

    .line 2848
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2850
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzw;Lcom/google/android/gms/measurement/internal/zzn;)V

    :cond_0
    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzw;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 10

    .line 2852
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2853
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2854
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2855
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2856
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2857
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 2858
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzn()V

    .line 2859
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zze(Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2861
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v0, :cond_1

    .line 2862
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    return-void

    .line 2864
    :cond_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzw;-><init>(Lcom/google/android/gms/measurement/internal/zzw;)V

    const/4 p1, 0x0

    .line 2865
    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zze:Z

    .line 2866
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzac;->zze()V

    .line 2869
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzac;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzw;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2870
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2872
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v2

    .line 2873
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    .line 2874
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v4

    .line 2875
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzev;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/String;

    .line 2876
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 2877
    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzw;->zze:Z

    if-eqz v3, :cond_3

    .line 2878
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/String;

    .line 2879
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzd:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzd:J

    .line 2880
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzh:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzh:J

    .line 2881
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzf:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzf:Ljava/lang/String;

    .line 2882
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzi:Lcom/google/android/gms/measurement/internal/zzar;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzi:Lcom/google/android/gms/measurement/internal/zzar;

    .line 2883
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzw;->zze:Z

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzw;->zze:Z

    .line 2884
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzkw;->zzb:J

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    .line 2885
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkw;->zza()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    goto :goto_0

    .line 2886
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzf:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2887
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzd:J

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    .line 2888
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkw;->zza()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    .line 2889
    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzw;->zze:Z

    const/4 p1, 0x1

    .line 2891
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zze:Z

    if-eqz v1, :cond_6

    .line 2892
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    .line 2893
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzky;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzkw;->zzb:J

    .line 2894
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkw;->zza()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzky;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 2895
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzky;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2898
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v1

    .line 2899
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zzv()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    .line 2900
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v4

    .line 2901
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzky;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzev;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzky;->zze:Ljava/lang/Object;

    .line 2902
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 2904
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v1

    .line 2905
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    .line 2906
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2907
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v4

    .line 2908
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzky;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzev;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzky;->zze:Ljava/lang/Object;

    .line 2909
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    if-eqz p1, :cond_6

    .line 2910
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzi:Lcom/google/android/gms/measurement/internal/zzar;

    if-eqz p1, :cond_6

    .line 2911
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzar;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzi:Lcom/google/android/gms/measurement/internal/zzar;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzd:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Lcom/google/android/gms/measurement/internal/zzar;J)V

    .line 2912
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 2913
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzw;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2916
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    .line 2917
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zzv()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    .line 2918
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    .line 2919
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    .line 2920
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkw;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 2921
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 2923
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    .line 2924
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    .line 2925
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2926
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    .line 2927
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    .line 2928
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkw;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 2929
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2930
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2931
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    return-void

    :catchall_0
    move-exception p1

    .line 2933
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    .line 2934
    throw p1
.end method

.method final zza(Ljava/lang/Runnable;)V
    .locals 1

    .line 2229
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 2230
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzo:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzo:Ljava/util/List;

    .line 2232
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 2011
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 2012
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzn()V

    .line 2013
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 2015
    :try_start_0
    new-array p4, v0, [B

    .line 2017
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v1

    .line 2018
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2019
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzac;->zze()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2020
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v1

    const/16 v2, 0xc8

    const/16 v3, 0x130

    const/4 v4, 0x1

    if-eq p2, v2, :cond_1

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_1

    if-ne p2, v3, :cond_2

    :cond_1
    if-nez p3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 2024
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p2

    .line 2025
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    .line 2026
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    const/16 v5, 0x194

    if-nez v2, :cond_8

    if-ne p2, v5, :cond_4

    goto :goto_2

    .line 2064
    :cond_4
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    .line 2065
    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzf;->zzi(J)V

    .line 2066
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p4

    invoke-virtual {p4, v1}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    .line 2068
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p4

    .line 2069
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2070
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc()Lcom/google/android/gms/measurement/internal/zzfv;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzc(Ljava/lang/String;)V

    .line 2072
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object p1

    .line 2073
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfj;->zzd:Lcom/google/android/gms/measurement/internal/zzfn;

    .line 2074
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    .line 2075
    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzfn;->zza(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_6

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_1
    if-eqz v4, :cond_7

    .line 2079
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object p1

    .line 2080
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfj;->zze:Lcom/google/android/gms/measurement/internal/zzfn;

    .line 2081
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    .line 2082
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzfn;->zza(J)V

    .line 2083
    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzab()V

    goto/16 :goto_7

    :cond_8
    :goto_2
    const/4 p3, 0x0

    if-eqz p5, :cond_9

    const-string v2, "Last-Modified"

    .line 2028
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_3

    :cond_9
    move-object p5, p3

    :goto_3
    if-eqz p5, :cond_a

    .line 2029
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 2030
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object p5, p3

    :goto_4
    if-eq p2, v5, :cond_c

    if-ne p2, v3, :cond_b

    goto :goto_5

    .line 2039
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc()Lcom/google/android/gms/measurement/internal/zzfv;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzfv;->zza(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_d

    .line 2040
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2041
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzr:Z

    .line 2042
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzac()V

    return-void

    .line 2033
    :cond_c
    :goto_5
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc()Lcom/google/android/gms/measurement/internal/zzfv;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzca$zzb;

    move-result-object p5

    if-nez p5, :cond_d

    .line 2034
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc()Lcom/google/android/gms/measurement/internal/zzfv;

    move-result-object p5

    invoke-virtual {p5, p1, p3, p3}, Lcom/google/android/gms/measurement/internal/zzfv;->zza(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p3, :cond_d

    .line 2035
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2036
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzr:Z

    .line 2037
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzac()V

    return-void

    .line 2045
    :cond_d
    :try_start_5
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    .line 2046
    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzh(J)V

    .line 2047
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    if-ne p2, v5, :cond_e

    .line 2050
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p2

    .line 2051
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzex;->zzj()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    .line 2052
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 2054
    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    .line 2055
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 2056
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    .line 2057
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 2058
    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2059
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzd()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfa;->zze()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzaa()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2060
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzo()V

    goto :goto_7

    .line 2061
    :cond_f
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzab()V

    .line 2084
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2085
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2089
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzr:Z

    .line 2090
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzac()V

    return-void

    :catchall_0
    move-exception p1

    .line 2087
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    .line 2088
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    .line 2092
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzr:Z

    .line 2093
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzac()V

    .line 2094
    throw p1
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzad;)V
    .locals 5

    .line 139
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 141
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzn()V

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzz:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    .line 146
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzs()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 150
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkm;->zzaj()V

    .line 151
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    .line 152
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "consent_state"

    .line 153
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzad;->zza()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v2, "consent_settings"

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 156
    invoke-virtual {p2, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-nez p2, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p2

    .line 159
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p2

    const-string v1, "Failed to insert/update consent setting (got -1). appId"

    .line 160
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 161
    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p2

    .line 164
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    const-string v1, "Error storing consent setting. appId, error"

    .line 166
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method final zza(Z)V
    .locals 0

    .line 3171
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzab()V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/measurement/internal/zzy;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    return-object v0
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzkw;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 7

    .line 2527
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 2528
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzn()V

    .line 2529
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zze(Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2531
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v0, :cond_1

    .line 2532
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    return-void

    :cond_1
    const-string v0, "_npa"

    .line 2534
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 2536
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    .line 2537
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zzv()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string v0, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    .line 2538
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkw;

    const-string v2, "_npa"

    .line 2539
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 2540
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    .line 2541
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "auto"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2542
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzkw;Lcom/google/android/gms/measurement/internal/zzn;)V

    return-void

    .line 2545
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    .line 2546
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zzv()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    const-string v1, "Removing user property"

    .line 2547
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    .line 2548
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2549
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2550
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zze()V

    .line 2551
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    .line 2552
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V

    .line 2555
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p2

    .line 2556
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzex;->zzv()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p2

    const-string v0, "User property removed"

    .line 2557
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    .line 2558
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzev;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2559
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2560
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    return-void

    :catchall_0
    move-exception p1

    .line 2562
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    .line 2563
    throw p1
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2569
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 2570
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzn()V

    .line 2571
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2572
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2573
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zze(Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2575
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_1

    .line 2577
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    .line 2578
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2579
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzf;->zzh(J)V

    .line 2580
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    .line 2581
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc()Lcom/google/android/gms/measurement/internal/zzfv;

    move-result-object v0

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzfv;->zzd(Ljava/lang/String;)V

    .line 2582
    :cond_1
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v0, :cond_2

    .line 2583
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    return-void

    .line 2585
    :cond_2
    iget-wide v5, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzm:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_3

    .line 2588
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 2589
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    .line 2591
    :cond_3
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzw()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    .line 2592
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzh()V

    .line 2593
    iget v0, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzn:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v14, :cond_4

    .line 2596
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v7

    .line 2597
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v7

    const-string v8, "Incorrect app type, assuming installed app. appId, appType"

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 2598
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 2599
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2600
    invoke-virtual {v7, v8, v9, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x0

    goto :goto_0

    :cond_4
    move v15, v0

    .line 2602
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zze()V

    .line 2604
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v8, "_npa"

    .line 2605
    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/measurement/internal/zzac;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzky;

    move-result-object v0

    const-wide/16 v11, 0x1

    if-eqz v0, :cond_5

    const-string v7, "auto"

    .line 2606
    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzky;->zzb:Ljava/lang/String;

    .line 2607
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2608
    :cond_5
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/lang/Boolean;

    if-eqz v7, :cond_8

    .line 2609
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzkw;

    const-string v8, "_npa"

    .line 2610
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    move-wide/from16 v16, v11

    goto :goto_1

    :cond_6
    move-wide/from16 v16, v3

    :goto_1
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v7, v9

    move-object v3, v9

    move-wide v9, v5

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_7

    .line 2611
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzky;->zze:Ljava/lang/Object;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzkw;->zzc:Ljava/lang/Long;

    .line 2612
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2613
    :cond_7
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzkw;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    .line 2615
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkw;

    const-string v8, "_npa"

    const/4 v11, 0x0

    const-string v12, "auto"

    move-object v7, v0

    move-wide v9, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2616
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzb(Lcom/google/android/gms/measurement/internal/zzkw;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 2618
    :cond_9
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    .line 2620
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    .line 2621
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    .line 2622
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    .line 2623
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()Ljava/lang/String;

    move-result-object v9

    .line 2624
    invoke-static {v4, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2626
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v4

    .line 2627
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v4

    const-string v7, "New GMP App Id passed in. Removing cached database data. appId"

    .line 2628
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 2629
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2630
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v7

    .line 2631
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkm;->zzaj()V

    .line 2632
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 2633
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2634
    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzac;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2635
    new-array v8, v14, [Ljava/lang/String;

    aput-object v7, v8, v13

    const-string v9, "events"

    const-string v10, "app_id=?"

    .line 2636
    invoke-virtual {v0, v9, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v13

    const-string v10, "user_attributes"

    const-string v11, "app_id=?"

    .line 2637
    invoke-virtual {v0, v10, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v9, v10

    const-string v10, "conditional_properties"

    const-string v11, "app_id=?"

    .line 2638
    invoke-virtual {v0, v10, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v9, v10

    const-string v10, "apps"

    const-string v11, "app_id=?"

    .line 2639
    invoke-virtual {v0, v10, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v9, v10

    const-string v10, "raw_events"

    const-string v11, "app_id=?"

    .line 2640
    invoke-virtual {v0, v10, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v9, v10

    const-string v10, "raw_events_metadata"

    const-string v11, "app_id=?"

    .line 2641
    invoke-virtual {v0, v10, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v9, v10

    const-string v10, "event_filters"

    const-string v11, "app_id=?"

    .line 2642
    invoke-virtual {v0, v10, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v9, v10

    const-string v10, "property_filters"

    const-string v11, "app_id=?"

    .line 2643
    invoke-virtual {v0, v10, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v9, v10

    const-string v10, "audience_filter_values"

    const-string v11, "app_id=?"

    .line 2644
    invoke-virtual {v0, v10, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v9, v10

    const-string v10, "consent_settings"

    const-string v11, "app_id=?"

    .line 2645
    invoke-virtual {v0, v10, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v9, v0

    if-lez v9, :cond_a

    .line 2647
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    const-string v8, "Deleted application data. app, records"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v7, v9}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 2650
    :try_start_2
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v4

    .line 2651
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v4

    const-string v8, "Error deleting application data. appId, error"

    .line 2652
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v8, v7, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    :goto_3
    move-object v0, v3

    :cond_b
    if-eqz v0, :cond_e

    .line 2656
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzm()J

    move-result-wide v7

    const-wide/32 v9, -0x80000000

    cmp-long v4, v7, v9

    if-eqz v4, :cond_c

    .line 2657
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzm()J

    move-result-wide v7

    iget-wide v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    cmp-long v4, v7, v11

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    goto :goto_4

    :cond_c
    const/4 v4, 0x0

    .line 2659
    :goto_4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzm()J

    move-result-wide v7

    cmp-long v11, v7, v9

    if-nez v11, :cond_d

    .line 2660
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 2661
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzl()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const/4 v7, 0x1

    goto :goto_5

    :cond_d
    const/4 v7, 0x0

    :goto_5
    or-int/2addr v4, v7

    if-eqz v4, :cond_e

    .line 2663
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v7, "_pv"

    .line 2664
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2665
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzar;

    const-string v8, "_au"

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzam;

    invoke-direct {v9, v4}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Landroid/os/Bundle;)V

    const-string v10, "auto"

    move-object v7, v0

    move-wide v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzam;Ljava/lang/String;J)V

    .line 2666
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 2667
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    if-nez v15, :cond_f

    .line 2671
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v7, "_f"

    .line 2672
    invoke-virtual {v0, v4, v7}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    goto :goto_6

    :cond_f
    if-ne v15, v14, :cond_10

    .line 2675
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v7, "_v"

    .line 2676
    invoke-virtual {v0, v4, v7}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    goto :goto_6

    :cond_10
    move-object v0, v3

    :goto_6
    if-nez v0, :cond_24

    const-wide/32 v7, 0x36ee80

    .line 2678
    div-long v9, v5, v7

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    mul-long v9, v9, v7

    if-nez v15, :cond_1f

    .line 2680
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkw;

    const-string v8, "_fot"

    .line 2681
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v15, "auto"

    move-object v7, v0

    move-wide v9, v5

    move-wide v13, v11

    move-object v11, v4

    move-object v12, v15

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2682
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzkw;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 2684
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 2685
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzat;->zzar:Lcom/google/android/gms/measurement/internal/zzem;

    .line 2686
    invoke-virtual {v0, v4, v7}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2688
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 2689
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    .line 2690
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zze()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 2691
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Ljava/lang/String;)V

    .line 2693
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 2694
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzn()V

    .line 2695
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_c"

    .line 2696
    invoke-virtual {v4, v0, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_r"

    .line 2697
    invoke-virtual {v4, v0, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_uwa"

    const-wide/16 v7, 0x0

    .line 2698
    invoke-virtual {v4, v0, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_pfo"

    .line 2699
    invoke-virtual {v4, v0, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_sys"

    .line 2700
    invoke-virtual {v4, v0, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_sysu"

    .line 2701
    invoke-virtual {v4, v0, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2703
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 2704
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzat;->zzat:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "_et"

    .line 2705
    invoke-virtual {v4, v0, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2706
    :cond_12
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzq:Z

    if-eqz v0, :cond_13

    const-string v0, "_dac"

    .line 2707
    invoke-virtual {v4, v0, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2708
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 2709
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2710
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 2711
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkm;->zzaj()V

    const-string v8, "first_open_count"

    .line 2712
    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/measurement/internal/zzac;->zzh(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v11

    .line 2715
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzm()Landroid/content/Context;

    move-result-object v0

    .line 2716
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_14

    .line 2719
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    .line 2720
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    const-string v3, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 2721
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 2722
    invoke-virtual {v0, v3, v7}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v7, v11

    const-wide/16 v9, 0x0

    goto/16 :goto_d

    .line 2725
    :cond_14
    :try_start_3
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzm()Landroid/content/Context;

    move-result-object v0

    .line 2726
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :catch_1
    move-exception v0

    .line 2730
    :try_start_4
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v7

    .line 2731
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v7

    const-string v8, "Package info is null, first open report might be inaccurate. appId"

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 2732
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 2733
    invoke-virtual {v7, v8, v9, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v3

    :goto_7
    if-eqz v0, :cond_1a

    .line 2735
    iget-wide v7, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v9, 0x0

    cmp-long v15, v7, v9

    if-eqz v15, :cond_19

    .line 2737
    iget-wide v7, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v9, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v7, v9

    if-eqz v0, :cond_17

    .line 2739
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 2740
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzat;->zzbo:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-wide/16 v7, 0x0

    cmp-long v0, v11, v7

    if-nez v0, :cond_16

    const-string v0, "_uwa"

    .line 2742
    invoke-virtual {v4, v0, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_8

    :cond_15
    const-string v0, "_uwa"

    .line 2743
    invoke-virtual {v4, v0, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_16
    :goto_8
    const/4 v0, 0x0

    goto :goto_9

    :cond_17
    const/4 v0, 0x1

    .line 2745
    :goto_9
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzkw;

    const-string v8, "_fi"

    if-eqz v0, :cond_18

    move-wide v9, v13

    goto :goto_a

    :cond_18
    const-wide/16 v9, 0x0

    .line 2746
    :goto_a
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v18, "auto"

    move-object v7, v15

    move-wide v9, v5

    move-wide/from16 v19, v11

    move-object v11, v0

    move-object/from16 v12, v18

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2747
    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzkw;Lcom/google/android/gms/measurement/internal/zzn;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_b

    :cond_19
    move-wide/from16 v19, v11

    goto :goto_b

    :cond_1a
    move-wide/from16 v19, v11

    .line 2750
    :goto_b
    :try_start_5
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzm()Landroid/content/Context;

    move-result-object v0

    .line 2751
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_c

    :catch_2
    move-exception v0

    .line 2755
    :try_start_6
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v7

    .line 2756
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v7

    const-string v8, "Application info is null, first open report might be inaccurate. appId"

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 2757
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 2758
    invoke-virtual {v7, v8, v9, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_c
    if-eqz v3, :cond_1d

    .line 2760
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v7, 0x1

    and-int/2addr v0, v7

    if-eqz v0, :cond_1b

    const-string v0, "_sys"

    .line 2761
    invoke-virtual {v4, v0, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2762
    :cond_1b
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1c

    const-string v0, "_sysu"

    .line 2763
    invoke-virtual {v4, v0, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-wide/from16 v7, v19

    const-wide/16 v9, 0x0

    goto :goto_d

    :cond_1c
    move-wide/from16 v7, v19

    const-wide/16 v9, 0x0

    goto :goto_d

    :cond_1d
    move-wide/from16 v7, v19

    const-wide/16 v9, 0x0

    :goto_d
    cmp-long v0, v7, v9

    if-ltz v0, :cond_1e

    const-string v0, "_pfo"

    .line 2765
    invoke-virtual {v4, v0, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2766
    :cond_1e
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzar;

    const-string v8, "_f"

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzam;

    invoke-direct {v9, v4}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Landroid/os/Bundle;)V

    const-string v10, "auto"

    move-object v7, v0

    move-wide v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzam;Ljava/lang/String;J)V

    .line 2767
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzb(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_e

    :cond_1f
    move-wide v13, v11

    const/4 v3, 0x1

    if-ne v15, v3, :cond_22

    .line 2769
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkw;

    const-string v8, "_fvt"

    .line 2770
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "auto"

    move-object v7, v0

    move-wide v9, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2771
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzkw;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 2773
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 2774
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzn()V

    .line 2775
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_c"

    .line 2776
    invoke-virtual {v0, v3, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "_r"

    .line 2777
    invoke-virtual {v0, v3, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2779
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v3

    .line 2780
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzat;->zzat:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v3, v4, v7}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v3

    if-eqz v3, :cond_20

    const-string v3, "_et"

    .line 2781
    invoke-virtual {v0, v3, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2782
    :cond_20
    iget-boolean v3, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzq:Z

    if-eqz v3, :cond_21

    const-string v3, "_dac"

    .line 2783
    invoke-virtual {v0, v3, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2784
    :cond_21
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzar;

    const-string v8, "_v"

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzam;

    invoke-direct {v9, v0}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Landroid/os/Bundle;)V

    const-string v10, "auto"

    move-object v7, v3

    move-wide v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzam;Ljava/lang/String;J)V

    .line 2785
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzb(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 2787
    :cond_22
    :goto_e
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 2788
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzat;->zzau:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 2790
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_et"

    .line 2791
    invoke-virtual {v0, v3, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2793
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v3

    .line 2794
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzat;->zzat:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v3, v4, v7}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v3

    if-eqz v3, :cond_23

    const-string v3, "_fr"

    .line 2795
    invoke-virtual {v0, v3, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2796
    :cond_23
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzar;

    const-string v8, "_e"

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzam;

    invoke-direct {v9, v0}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Landroid/os/Bundle;)V

    const-string v10, "auto"

    move-object v7, v3

    move-wide v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzam;Ljava/lang/String;J)V

    .line 2797
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzb(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_f

    .line 2798
    :cond_24
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzi:Z

    if-eqz v0, :cond_25

    .line 2800
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2801
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzar;

    const-string v8, "_cd"

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzam;

    invoke-direct {v9, v0}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Landroid/os/Bundle;)V

    const-string v10, "auto"

    move-object v7, v3

    move-wide v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzam;Ljava/lang/String;J)V

    .line 2802
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzb(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 2803
    :cond_25
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2804
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    return-void

    :catchall_0
    move-exception v0

    .line 2806
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    .line 2807
    throw v0
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzw;)V
    .locals 1

    .line 2935
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2937
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzb(Lcom/google/android/gms/measurement/internal/zzw;Lcom/google/android/gms/measurement/internal/zzn;)V

    :cond_0
    return-void
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzw;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 10

    .line 2939
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2940
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2941
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2942
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2943
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 2944
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzn()V

    .line 2945
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zze(Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2947
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v0, :cond_1

    .line 2948
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    return-void

    .line 2950
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zze()V

    .line 2951
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    .line 2953
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzw;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2956
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v1

    .line 2957
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zzv()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    const-string v2, "Removing conditional user property"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    .line 2958
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v4

    .line 2959
    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzev;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2960
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2961
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzac;->zze(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zze:Z

    if-eqz v1, :cond_2

    .line 2963
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 2964
    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzk:Lcom/google/android/gms/measurement/internal/zzar;

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    .line 2966
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzk:Lcom/google/android/gms/measurement/internal/zzar;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    if-eqz v2, :cond_3

    .line 2967
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzk:Lcom/google/android/gms/measurement/internal/zzar;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzb()Landroid/os/Bundle;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    :cond_3
    move-object v3, v1

    .line 2969
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v1

    .line 2970
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzk:Lcom/google/android/gms/measurement/internal/zzar;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzk:Lcom/google/android/gms/measurement/internal/zzar;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzar;->zzd:J

    const/4 p1, 0x1

    const/4 v8, 0x0

    .line 2971
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlj;->zzb()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2972
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 2973
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzat;->zzcs:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_1
    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    move-wide v5, v6

    move v7, p1

    .line 2974
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZZ)Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    .line 2975
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_2

    .line 2978
    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p2

    .line 2979
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    .line 2980
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2981
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    .line 2982
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzev;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2983
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2984
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->b_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2985
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    return-void

    :catchall_0
    move-exception p1

    .line 2987
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzac;->zzg()V

    .line 2988
    throw p1
.end method

.method final zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;
    .locals 6

    .line 3083
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 3084
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzn()V

    .line 3085
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3086
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3087
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v0

    .line 3088
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzad;->zza:Lcom/google/android/gms/measurement/internal/zzad;

    .line 3089
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3090
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    .line 3091
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3092
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 3093
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzw:Ljava/lang/String;

    .line 3094
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzad;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzad;->zzb(Lcom/google/android/gms/measurement/internal/zzad;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v1

    .line 3095
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3096
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    .line 3097
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3098
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzad;->zzc()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_1

    .line 3100
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzj:Lcom/google/android/gms/measurement/internal/zzjv;

    .line 3101
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzjv;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3103
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmz;->zzb()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3104
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v3

    .line 3105
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzat;->zzbp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v3

    if-eqz v3, :cond_11

    if-nez v0, :cond_5

    .line 3107
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzf;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzgb;Ljava/lang/String;)V

    .line 3108
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3109
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v3

    .line 3110
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3111
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzad;->zze()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3112
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzad;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)V

    .line 3113
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzad;->zzc()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3114
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zze(Ljava/lang/String;)V

    goto :goto_2

    .line 3115
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)V

    .line 3116
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zze(Ljava/lang/String;)V

    goto :goto_2

    .line 3117
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3118
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v3

    .line 3119
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3120
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzad;->zzc()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3121
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 3122
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zze(Ljava/lang/String;)V

    .line 3123
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3124
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    .line 3125
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3126
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzad;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)V

    goto :goto_2

    .line 3127
    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)V

    .line 3128
    :cond_8
    :goto_2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(Ljava/lang/String;)V

    .line 3129
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc(Ljava/lang/String;)V

    .line 3130
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznq;->zzb()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3131
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v1

    .line 3132
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzat;->zzbj:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3133
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzd(Ljava/lang/String;)V

    .line 3134
    :cond_9
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzk:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 3135
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzf(Ljava/lang/String;)V

    .line 3136
    :cond_a
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zze:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_b

    .line 3137
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzd(J)V

    .line 3138
    :cond_b
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 3139
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzg(Ljava/lang/String;)V

    .line 3140
    :cond_c
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzc(J)V

    .line 3141
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 3142
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzh(Ljava/lang/String;)V

    .line 3143
    :cond_d
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzf:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zze(J)V

    .line 3144
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Z)V

    .line 3145
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 3146
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzi(Ljava/lang/String;)V

    .line 3148
    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v1

    .line 3149
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzat;->zzcf:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 3150
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzl:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzp(J)V

    .line 3151
    :cond_f
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzo:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(Z)V

    .line 3152
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzp:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc(Z)V

    .line 3153
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/Boolean;)V

    .line 3154
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzt:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzf(J)V

    .line 3155
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zza()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 3156
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    :cond_10
    return-object v0

    .line 3158
    :cond_11
    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzn;Lcom/google/android/gms/measurement/internal/zzf;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()Lcom/google/android/gms/measurement/internal/zzfv;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzb:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzb(Lcom/google/android/gms/measurement/internal/zzkm;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzb:Lcom/google/android/gms/measurement/internal/zzfv;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzfa;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzc:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzb(Lcom/google/android/gms/measurement/internal/zzkm;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzc:Lcom/google/android/gms/measurement/internal/zzfa;

    return-object v0
.end method

.method final zzd(Lcom/google/android/gms/measurement/internal/zzn;)Ljava/lang/String;
    .locals 4

    .line 3160
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    .line 3161
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzks;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 3162
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7530

    .line 3163
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 3166
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v1

    .line 3167
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    const-string v2, "Failed to get app instance id. appId"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 3168
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 3169
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zze()Lcom/google/android/gms/measurement/internal/zzac;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzd:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzb(Lcom/google/android/gms/measurement/internal/zzkm;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzd:Lcom/google/android/gms/measurement/internal/zzac;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/zzo;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzg:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzb(Lcom/google/android/gms/measurement/internal/zzkm;)V

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzg:Lcom/google/android/gms/measurement/internal/zzo;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/measurement/internal/zzil;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzi:Lcom/google/android/gms/measurement/internal/zzil;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzb(Lcom/google/android/gms/measurement/internal/zzkm;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzi:Lcom/google/android/gms/measurement/internal/zzil;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzkt;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzh:Lcom/google/android/gms/measurement/internal/zzkt;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzb(Lcom/google/android/gms/measurement/internal/zzkm;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzh:Lcom/google/android/gms/measurement/internal/zzkt;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzev;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    return-object v0
.end method

.method public final zzk()Lcom/google/android/gms/measurement/internal/zzkx;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v0

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final zzm()Landroid/content/Context;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzm()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zzn()V
    .locals 2

    .line 131
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzl:Z

    if-eqz v0, :cond_0

    return-void

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzo()V
    .locals 17

    move-object/from16 v1, p0

    .line 885
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzn()V

    const/4 v0, 0x1

    .line 887
    iput-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzt:Z

    const/4 v2, 0x0

    .line 888
    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzv()Lcom/google/android/gms/measurement/internal/zziv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zziv;->zzaf()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_0

    .line 891
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    .line 892
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    const-string v3, "Upload data called on the client side before use of service was decided"

    .line 893
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 894
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzt:Z

    .line 895
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzac()V

    return-void

    .line 897
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 899
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    .line 900
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    const-string v3, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 901
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzt:Z

    .line 902
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzac()V

    return-void

    .line 904
    :cond_1
    :try_start_2
    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzn:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 905
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzab()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 906
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzt:Z

    .line 907
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzac()V

    return-void

    .line 910
    :cond_2
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 911
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzw:Ljava/util/List;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 914
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    .line 915
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    const-string v3, "Uploading requested multiple times"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 916
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzt:Z

    .line 917
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzac()V

    return-void

    .line 919
    :cond_4
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzd()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfa;->zze()Z

    move-result v3

    if-nez v3, :cond_5

    .line 921
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    .line 922
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    const-string v3, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    .line 923
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzab()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 924
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzt:Z

    .line 925
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzac()V

    return-void

    .line 928
    :cond_5
    :try_start_5
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    .line 929
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    .line 931
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v7

    .line 932
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzat;->zzap:Lcom/google/android/gms/measurement/internal/zzem;

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzy;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)I

    move-result v7

    .line 933
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzy;->zzj()J

    move-result-wide v10

    sub-long v10, v3, v10

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_6

    .line 935
    invoke-direct {v1, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Ljava/lang/String;J)Z

    move-result v12

    if-eqz v12, :cond_6

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 938
    :cond_6
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v7

    .line 939
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzfj;->zzc:Lcom/google/android/gms/measurement/internal/zzfn;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfn;->zza()J

    move-result-wide v7

    cmp-long v10, v7, v5

    if-eqz v10, :cond_7

    .line 942
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v5

    .line 943
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzex;->zzv()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v5

    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v7, v3, v7

    .line 944
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 945
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 946
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzac;->d_()Ljava/lang/String;

    move-result-object v5

    .line 947
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-wide/16 v7, -0x1

    if-nez v6, :cond_1d

    .line 948
    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzy:J

    cmp-long v6, v10, v7

    if-nez v6, :cond_8

    .line 949
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzac;->zzz()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzy:J

    .line 951
    :cond_8
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v6

    .line 953
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzat;->zzf:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/measurement/internal/zzy;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)I

    move-result v6

    .line 956
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v7

    .line 958
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzat;->zzg:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/measurement/internal/zzy;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 961
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v8

    invoke-virtual {v8, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    .line 962
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1e

    .line 963
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 964
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v7

    .line 965
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 966
    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzad;->zzc()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 968
    :cond_9
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 969
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 970
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzad()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 971
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzad()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_b
    move-object v7, v9

    :goto_2
    if-eqz v7, :cond_d

    const/4 v8, 0x0

    .line 975
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_d

    .line 976
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 977
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzad()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 978
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzad()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 979
    invoke-interface {v6, v2, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    goto :goto_4

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 982
    :cond_d
    :goto_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzb()Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;

    move-result-object v7

    .line 983
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 984
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 986
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v11

    .line 987
    invoke-virtual {v11, v5}, Lcom/google/android/gms/measurement/internal/zzy;->zzh(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 988
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 989
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v11

    .line 990
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 991
    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzad;->zzc()Z

    move-result v11

    if-eqz v11, :cond_f

    :cond_e
    const/4 v11, 0x1

    goto :goto_5

    :cond_f
    const/4 v11, 0x0

    .line 992
    :goto_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 993
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v12

    .line 994
    sget-object v13, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 995
    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzad;->zzc()Z

    move-result v12

    if-eqz v12, :cond_10

    goto :goto_6

    :cond_10
    const/4 v12, 0x0

    goto :goto_7

    :cond_11
    :goto_6
    const/4 v12, 0x1

    .line 996
    :goto_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 997
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v13

    .line 998
    sget-object v14, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 999
    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzad;->zze()Z

    move-result v13

    if-eqz v13, :cond_12

    goto :goto_8

    :cond_12
    const/4 v13, 0x0

    goto :goto_9

    :cond_13
    :goto_8
    const/4 v13, 0x1

    :goto_9
    const/4 v14, 0x0

    :goto_a
    if-ge v14, v8, :cond_18

    .line 1001
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    iget-object v15, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 1002
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzhv;->zzbo()Lcom/google/android/gms/internal/measurement/zzhv$zzb;

    move-result-object v15

    .line 1003
    check-cast v15, Lcom/google/android/gms/internal/measurement/zzhv$zzb;

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 1004
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v10

    const-wide/16 v9, 0x7949

    .line 1006
    invoke-virtual {v15, v9, v10}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzg(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v9

    .line 1007
    invoke-virtual {v9, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v9

    .line 1009
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(Z)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    if-nez v11, :cond_14

    .line 1011
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzr()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 1012
    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1013
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v9

    .line 1014
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v9

    if-eqz v9, :cond_16

    if-nez v12, :cond_15

    .line 1016
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzk()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 1017
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzl()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_15
    if-nez v13, :cond_16

    .line 1019
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzm()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 1021
    :cond_16
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v9

    .line 1022
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzat;->zzax:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v9, v5, v10}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1023
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzgd;->zzbk()[B

    move-result-object v9

    .line 1024
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/google/android/gms/measurement/internal/zzkt;->zza([B)J

    move-result-wide v9

    invoke-virtual {v15, v9, v10}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzl(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 1025
    :cond_17
    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v10, v16

    const/4 v0, 0x1

    const/4 v9, 0x0

    goto/16 :goto_a

    :cond_18
    move-object/from16 v16, v10

    .line 1029
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v6

    const/4 v9, 0x2

    .line 1030
    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzex;->zza(I)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1031
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    move-result-object v6

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzf;)Ljava/lang/String;

    move-result-object v9

    goto :goto_b

    :cond_19
    const/4 v9, 0x0

    .line 1032
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh()Lcom/google/android/gms/measurement/internal/zzkt;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzhv;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    .line 1033
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgd;->zzbk()[B

    move-result-object v14

    .line 1035
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzat;->zzp:Lcom/google/android/gms/measurement/internal/zzem;

    const/4 v0, 0x0

    .line 1036
    invoke-virtual {v6, v0}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1037
    check-cast v0, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1039
    :try_start_6
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1041
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1a

    const/4 v6, 0x1

    goto :goto_c

    :cond_1a
    const/4 v6, 0x0

    :goto_c
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 1042
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzw:Ljava/util/List;

    if-eqz v6, :cond_1b

    .line 1044
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v6

    .line 1045
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    const-string v10, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    goto :goto_d

    .line 1046
    :cond_1b
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v10, v16

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzw:Ljava/util/List;

    .line 1048
    :goto_d
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v6

    .line 1049
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzfj;->zzd:Lcom/google/android/gms/measurement/internal/zzfn;

    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/measurement/internal/zzfn;->zza(J)V

    const-string v3, "?"

    if-lez v8, :cond_1c

    .line 1052
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v3

    .line 1054
    :cond_1c
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v4

    .line 1055
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v4

    const-string v6, "Uploading data. app, uncompressed size, data"

    array-length v7, v14

    .line 1056
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v3, v7, v9}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    .line 1057
    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzs:Z

    .line 1058
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzd()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v11

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-direct {v3, v1, v5}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 1061
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzkm;->zzaj()V

    .line 1062
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    invoke-static {v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgu;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v4

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzfe;

    const/4 v15, 0x0

    move-object v10, v6

    move-object v12, v5

    move-object/from16 v16, v3

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/zzfe;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzfc;)V

    .line 1066
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_e

    .line 1070
    :catch_0
    :try_start_7
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v3

    .line 1071
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v3

    const-string v4, "Failed to parse upload URL. Not uploading. appId"

    .line 1072
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1073
    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    .line 1075
    :cond_1d
    iput-wide v7, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzy:J

    .line 1077
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    .line 1078
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzy;->zzj()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzac;->zza(J)Ljava/lang/String;

    move-result-object v0

    .line 1079
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1080
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 1082
    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1083
    :cond_1e
    :goto_e
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzt:Z

    .line 1084
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzac()V

    return-void

    :catchall_0
    move-exception v0

    .line 1086
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzt:Z

    .line 1087
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzac()V

    .line 1088
    throw v0

    return-void
.end method

.method public final zzp()Lcom/google/android/gms/measurement/internal/zzfu;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/measurement/internal/zzex;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    return-object v0
.end method

.method final zzr()V
    .locals 4

    .line 2270
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    .line 2271
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzn()V

    .line 2272
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzm:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 2273
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzm:Z

    .line 2274
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzad()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2276
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzv:Ljava/nio/channels/FileChannel;

    .line 2277
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Ljava/nio/channels/FileChannel;)I

    move-result v0

    .line 2278
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzx()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzae()I

    move-result v1

    .line 2280
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzx()V

    if-le v0, v1, :cond_0

    .line 2283
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v2

    .line 2284
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    .line 2285
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2286
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2287
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_2

    .line 2291
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzv:Ljava/nio/channels/FileChannel;

    .line 2292
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(ILjava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2294
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v2

    .line 2295
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    const-string v3, "Storage version upgraded. Previous, current version"

    .line 2296
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 2298
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v2

    .line 2299
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    const-string v3, "Storage version upgrade failed. Previous, current version"

    .line 2300
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2301
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2302
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method final zzs()V
    .locals 1

    .line 2566
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzq:I

    return-void
.end method

.method public final zzt()Lcom/google/android/gms/measurement/internal/zzx;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method final zzu()Lcom/google/android/gms/measurement/internal/zzgb;
    .locals 1

    .line 2568
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkp;->zzk:Lcom/google/android/gms/measurement/internal/zzgb;

    return-object v0
.end method
