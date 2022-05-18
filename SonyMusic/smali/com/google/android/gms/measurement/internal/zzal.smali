.class public final Lcom/google/android/gms/measurement/internal/zzal;
.super Lcom/google/android/gms/measurement/internal/zzgx;
.source "com.google.android.gms:play-services-measurement-impl@@17.5.0"


# instance fields
.field private zza:J

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/Boolean;

.field private zzd:Landroid/accounts/AccountManager;

.field private zze:Ljava/lang/Boolean;

.field private zzf:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgb;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzgx;-><init>(Lcom/google/android/gms/measurement/internal/zzgb;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()V
    .locals 1

    .line 64
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zza()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final zza(Landroid/content/Context;)Z
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzc:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzc:Ljava/lang/Boolean;

    .line 18
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "com.google.android.gms"

    const/16 v1, 0x80

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const/4 p1, 0x1

    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzc:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzc:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic zzb()V
    .locals 0

    .line 65
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()V

    return-void
.end method

.method public final bridge synthetic zzc()V
    .locals 0

    .line 66
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    return-void
.end method

.method protected final zzd()Z
    .locals 4

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 4
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/16 v2, 0xf

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v2, v0

    int-to-long v2, v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzal;->zza:J

    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzb:Ljava/lang/String;

    const/4 v0, 0x0

    return v0
.end method

.method public final zze()J
    .locals 2

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzaa()V

    .line 13
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzal;->zza:J

    return-wide v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzaa()V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method final zzg()J
    .locals 2

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 26
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzf:J

    return-wide v0
.end method

.method final zzh()V
    .locals 2

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzal;->zze:Ljava/lang/Boolean;

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzf:J

    return-void
.end method

.method final zzi()Z
    .locals 9

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 33
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzf:J

    sub-long v2, v0, v2

    const/4 v4, 0x0

    const-wide/32 v5, 0x5265c00

    cmp-long v7, v2, v5

    if-lez v7, :cond_0

    .line 34
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzal;->zze:Ljava/lang/Boolean;

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzal;->zze:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 36
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzm()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.GET_ACCOUNTS"

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzex;->zzi()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    const-string v4, "Permission error checking for dasher/unicorn accounts"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    .line 39
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzf:J

    .line 40
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzal;->zze:Ljava/lang/Boolean;

    return v3

    .line 42
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzd:Landroid/accounts/AccountManager;

    if-nez v2, :cond_3

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzm()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzd:Landroid/accounts/AccountManager;

    .line 44
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzd:Landroid/accounts/AccountManager;

    const-string v5, "com.google"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "service_HOSTED"

    aput-object v8, v7, v3

    .line 45
    invoke-virtual {v2, v5, v7, v4, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v2

    .line 46
    invoke-interface {v2}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/accounts/Account;

    if-eqz v2, :cond_4

    .line 47
    array-length v2, v2

    if-lez v2, :cond_4

    .line 48
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzal;->zze:Ljava/lang/Boolean;

    .line 49
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzf:J

    return v6

    .line 51
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzd:Landroid/accounts/AccountManager;

    const-string v5, "com.google"

    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "service_uca"

    aput-object v8, v7, v3

    .line 52
    invoke-virtual {v2, v5, v7, v4, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v2

    .line 53
    invoke-interface {v2}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/accounts/Account;

    if-eqz v2, :cond_5

    .line 54
    array-length v2, v2

    if-lez v2, :cond_5

    .line 55
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzal;->zze:Ljava/lang/Boolean;

    .line 56
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzf:J
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    .line 60
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzex;->zzf()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v4

    const-string v5, "Exception checking account types"

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    :cond_5
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzf:J

    .line 62
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzal;->zze:Ljava/lang/Boolean;

    return v3
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzal;
    .locals 1

    .line 67
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzm()Landroid/content/Context;
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzm()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzn()Lcom/google/android/gms/measurement/internal/zzev;
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzn()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzkx;
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzo()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zzfu;
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzex;
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzr()Lcom/google/android/gms/measurement/internal/zzfj;
    .locals 1

    .line 74
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzr()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzs()Lcom/google/android/gms/measurement/internal/zzy;
    .locals 1

    .line 75
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzs()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzt()Lcom/google/android/gms/measurement/internal/zzx;
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method
