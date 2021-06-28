.class public final Lcom/google/android/gms/tagmanager/zzba;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzdj;


# instance fields
.field private zzyr:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/google/android/gms/tagmanager/zzba;->zzyr:I

    return-void
.end method


# virtual methods
.method public final setLogLevel(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/google/android/gms/tagmanager/zzba;->zzyr:I

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 6
    iget v0, p0, Lcom/google/android/gms/tagmanager/zzba;->zzyr:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    .line 7
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final zzab(Ljava/lang/String;)V
    .locals 2

    .line 21
    iget v0, p0, Lcom/google/android/gms/tagmanager/zzba;->zzyr:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final zzac(Ljava/lang/String;)V
    .locals 2

    .line 9
    iget v0, p0, Lcom/google/android/gms/tagmanager/zzba;->zzyr:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    .line 10
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final zzav(Ljava/lang/String;)V
    .locals 2

    .line 3
    iget v0, p0, Lcom/google/android/gms/tagmanager/zzba;->zzyr:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final zzaw(Ljava/lang/String;)V
    .locals 2

    .line 15
    iget v0, p0, Lcom/google/android/gms/tagmanager/zzba;->zzyr:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    .line 16
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final zzax(Ljava/lang/String;)V
    .locals 2

    .line 18
    iget v0, p0, Lcom/google/android/gms/tagmanager/zzba;->zzyr:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    .line 19
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 12
    iget v0, p0, Lcom/google/android/gms/tagmanager/zzba;->zzyr:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    .line 13
    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
