.class public final Lcom/google/android/gms/measurement/internal/zzgc;
.super Lcom/google/android/gms/measurement/internal/zzeo;
.source "com.google.android.gms:play-services-measurement@@17.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzkp;

.field private zzb:Ljava/lang/Boolean;

.field private zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkp;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgc;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzkp;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzeo;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zzc:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzgc;)Lcom/google/android/gms/measurement/internal/zzkp;
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    return-object p0
.end method

.method private final zza(Ljava/lang/Runnable;)V
    .locals 1

    .line 224
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Z)V
    .locals 3

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    .line 119
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zzb:Ljava/lang/Boolean;

    if-nez p2, :cond_2

    const-string p2, "com.google.android.gms"

    .line 120
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zzc:Ljava/lang/String;

    .line 121
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 122
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzm()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 123
    invoke-static {p2, v2}, Lcom/google/android/gms/common/util/UidVerifier;->isGooglePlayServicesUid(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 124
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzm()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;

    move-result-object p2

    .line 125
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->isUidGoogleSigned(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 127
    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zzb:Ljava/lang/Boolean;

    .line 128
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zzb:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    .line 129
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zzc:Ljava/lang/String;

    if-nez p2, :cond_4

    .line 130
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 131
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzm()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 132
    invoke-static {p2, v2, p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->uidHasPackageName(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 133
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zzc:Ljava/lang/String;

    .line 134
    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zzc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    return-void

    .line 135
    :cond_6
    new-instance p2, Ljava/lang/SecurityException;

    const-string v2, "Unknown calling package name \'%s\'."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 136
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 139
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 140
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    .line 142
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Measurement Service called with invalid calling package. appId"

    .line 143
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    throw p2

    .line 115
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string p2, "Measurement Service called without app package"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    .line 116
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Measurement Service called without app package"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzn;Z)V
    .locals 2

    .line 108
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzgc;->zza(Ljava/lang/String;Z)V

    .line 110
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 111
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzk()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object p2

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    .line 112
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/measurement/internal/zzn;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/measurement/internal/zzn;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzkw;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgc;->zzb(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 89
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzgt;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzgt;-><init>(Lcom/google/android/gms/measurement/internal/zzgc;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 90
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 91
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzky;

    if-nez p2, :cond_1

    .line 94
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzky;->zzc:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkx;->zzd(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    :cond_1
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-direct {v3, v2}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Lcom/google/android/gms/measurement/internal/zzky;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 99
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 100
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    const-string v1, "Failed to get user properties. appId"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 102
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 103
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzn;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzn;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzw;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 202
    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/measurement/internal/zzgc;->zzb(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    .line 203
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 204
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzgl;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgl;-><init>(Lcom/google/android/gms/measurement/internal/zzgc;Lcom/google/android/gms/measurement/internal/zzn;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 206
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 208
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzw;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 210
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgc;->zza(Ljava/lang/String;Z)V

    .line 211
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 212
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzgk;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgk;-><init>(Lcom/google/android/gms/measurement/internal/zzgc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 214
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 216
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 217
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p2

    .line 218
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties as"

    .line 219
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 220
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzkw;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 185
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgc;->zza(Ljava/lang/String;Z)V

    .line 186
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 187
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgi;-><init>(Lcom/google/android/gms/measurement/internal/zzgc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 189
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 190
    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzky;

    if-nez p4, :cond_1

    .line 192
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzky;->zzc:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkx;->zzd(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    :cond_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Lcom/google/android/gms/measurement/internal/zzky;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p3

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 197
    :goto_1
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 198
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzkp;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p3

    .line 199
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p3

    const-string p4, "Failed to get user properties as. appId"

    .line 200
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzn;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/measurement/internal/zzn;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzkw;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, p4, v0}, Lcom/google/android/gms/measurement/internal/zzgc;->zzb(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 169
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzgj;

    invoke-direct {v1, p0, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgj;-><init>(Lcom/google/android/gms/measurement/internal/zzgc;Lcom/google/android/gms/measurement/internal/zzn;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 171
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 172
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzky;

    if-nez p3, :cond_1

    .line 174
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzky;->zzc:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkx;->zzd(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    :cond_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Lcom/google/android/gms/measurement/internal/zzky;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 179
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 180
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p2

    .line 181
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p2

    const-string p3, "Failed to query user properties. appId"

    iget-object p4, p4, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 182
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    .line 183
    invoke-virtual {p2, p3, p4, p1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 145
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzgv;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzgv;-><init>(Lcom/google/android/gms/measurement/internal/zzgc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/measurement/internal/zzgc;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 2

    .line 147
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznr;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 148
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzb()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzch:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzgc;->zzb(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    .line 150
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzgf;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzgf;-><init>(Lcom/google/android/gms/measurement/internal/zzgc;Lcom/google/android/gms/measurement/internal/zzn;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzgc;->zza(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 1

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzgc;->zzb(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    .line 23
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgp;-><init>(Lcom/google/android/gms/measurement/internal/zzgc;Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzgc;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzar;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 p3, 0x1

    .line 44
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgc;->zza(Ljava/lang/String;Z)V

    .line 45
    new-instance p3, Lcom/google/android/gms/measurement/internal/zzgo;

    invoke-direct {p3, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgo;-><init>(Lcom/google/android/gms/measurement/internal/zzgc;Lcom/google/android/gms/measurement/internal/zzar;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/google/android/gms/measurement/internal/zzgc;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzkw;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 1

    .line 83
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzgc;->zzb(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    .line 85
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzgq;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;-><init>(Lcom/google/android/gms/measurement/internal/zzgc;Lcom/google/android/gms/measurement/internal/zzkw;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzgc;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgc;->zzb(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    .line 106
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzgs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzgs;-><init>(Lcom/google/android/gms/measurement/internal/zzgc;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzgc;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zza(Lcom/google/android/gms/measurement/internal/zzn;Landroid/os/Bundle;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 230
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zze()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 231
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzw;)V
    .locals 2

    .line 161
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgc;->zza(Ljava/lang/String;Z)V

    .line 164
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzw;-><init>(Lcom/google/android/gms/measurement/internal/zzw;)V

    .line 165
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzgg;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzgg;-><init>(Lcom/google/android/gms/measurement/internal/zzgc;Lcom/google/android/gms/measurement/internal/zzw;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzgc;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzw;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 1

    .line 154
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzgc;->zzb(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    .line 157
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzw;-><init>(Lcom/google/android/gms/measurement/internal/zzw;)V

    .line 158
    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    .line 159
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzgh;

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zzgh;-><init>(Lcom/google/android/gms/measurement/internal/zzgc;Lcom/google/android/gms/measurement/internal/zzw;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzgc;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzar;Ljava/lang/String;)[B
    .locals 9

    .line 47
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzgc;->zza(Ljava/lang/String;Z)V

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zzv()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    const-string v1, "Log and bundle. event"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 53
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzj()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 56
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 57
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkp;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzgr;

    invoke-direct {v5, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgr;-><init>(Lcom/google/android/gms/measurement/internal/zzgc;Lcom/google/android/gms/measurement/internal/zzar;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 59
    :try_start_0
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-nez v4, :cond_0

    .line 61
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 62
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkp;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v4

    .line 63
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v4

    const-string v5, "Log and bundle returned null. appId"

    .line 64
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    .line 65
    new-array v4, v4, [B

    .line 66
    :cond_0
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzkp;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->nanoTime()J

    move-result-wide v5

    div-long/2addr v5, v2

    .line 67
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 68
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzex;->zzv()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    const-string v3, "Log and bundle processed. event, size, time_ms"

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 70
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzkp;->zzj()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v7

    iget-object v8, p1, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    array-length v8, v4

    .line 71
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sub-long/2addr v5, v0

    .line 72
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 73
    invoke-virtual {v2, v3, v7, v8, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 77
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    const-string v2, "Failed to log and bundle. appId, event, error"

    .line 79
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 80
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->zzj()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v3

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {v1, v2, p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzar;
    .locals 8

    const-string v0, "_cmp"

    .line 26
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zza()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    const-string v2, "_cis"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "referrer broadcast"

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "referrer API"

    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzb()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzat;->zzar:Lcom/google/android/gms/measurement/internal/zzem;

    .line 35
    invoke-virtual {v0, p2, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 39
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzex;->zzu()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p2

    const-string v0, "Event has been filtered "

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzar;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzar;

    const-string v3, "_cmpx"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzar;->zzc:Ljava/lang/String;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzar;->zzd:J

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzam;Ljava/lang/String;J)V

    return-object p2

    :cond_3
    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgc;->zzb(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    .line 9
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzge;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzge;-><init>(Lcom/google/android/gms/measurement/internal/zzgc;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzgc;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/measurement/internal/zzn;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgc;->zzb(Lcom/google/android/gms/measurement/internal/zzn;Z)V

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzd(Lcom/google/android/gms/measurement/internal/zzn;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 2

    .line 221
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgc;->zza(Ljava/lang/String;Z)V

    .line 222
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzgn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzgn;-><init>(Lcom/google/android/gms/measurement/internal/zzgc;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzgc;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 2

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzb()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzcp:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzw:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzgm;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzgm;-><init>(Lcom/google/android/gms/measurement/internal/zzgc;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzf()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 18
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
