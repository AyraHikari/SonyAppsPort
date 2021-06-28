.class public final Lcom/google/android/gms/analytics/zzd;
.super Ljava/lang/Object;


# direct methods
.method private static zza(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    if-gtz p1, :cond_0

    const-string p1, "index out of range for prefix"

    .line 6
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/gtm/zzch;->zzf(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 8
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xb

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zze(I)Ljava/lang/String;
    .locals 1

    const-string v0, "cd"

    .line 2
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zza(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzg(I)Ljava/lang/String;
    .locals 1

    const-string v0, "cm"

    .line 4
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zza(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzh(I)Ljava/lang/String;
    .locals 1

    const-string v0, "&pr"

    .line 9
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zza(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzi(I)Ljava/lang/String;
    .locals 1

    const-string v0, "pr"

    .line 10
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zza(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzj(I)Ljava/lang/String;
    .locals 1

    const-string v0, "&promo"

    .line 11
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zza(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzk(I)Ljava/lang/String;
    .locals 1

    const-string v0, "promo"

    .line 12
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zza(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzl(I)Ljava/lang/String;
    .locals 1

    const-string v0, "pi"

    .line 13
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zza(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzm(I)Ljava/lang/String;
    .locals 1

    const-string v0, "&il"

    .line 14
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zza(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzn(I)Ljava/lang/String;
    .locals 1

    const-string v0, "il"

    .line 15
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zza(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzo(I)Ljava/lang/String;
    .locals 1

    const-string v0, "cd"

    .line 16
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zza(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzp(I)Ljava/lang/String;
    .locals 1

    const-string v0, "cm"

    .line 17
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zza(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
