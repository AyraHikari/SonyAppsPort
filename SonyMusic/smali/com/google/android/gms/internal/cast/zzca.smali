.class final Lcom/google/android/gms/internal/cast/zzca;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzdu;


# instance fields
.field private final synthetic zzxc:Lcom/google/android/gms/internal/cast/zzbs;

.field private final synthetic zzxd:Lcom/google/android/gms/internal/cast/zzbx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzbx;Lcom/google/android/gms/internal/cast/zzbs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzca;->zzxd:Lcom/google/android/gms/internal/cast/zzbx;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzca;->zzxc:Lcom/google/android/gms/internal/cast/zzbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(JILjava/lang/Object;)V
    .locals 8

    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 5
    :try_start_0
    iget-object p4, p0, Lcom/google/android/gms/internal/cast/zzca;->zzxd:Lcom/google/android/gms/internal/cast/zzbx;

    new-instance v7, Lcom/google/android/gms/internal/cast/zzcd;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p3, v0, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/cast/zzcd;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;JLorg/json/JSONObject;)V

    invoke-virtual {p4, v7}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    .line 7
    :cond_0
    check-cast p4, Lcom/google/android/gms/internal/cast/zzcf;

    .line 9
    iget-object v3, p4, Lcom/google/android/gms/internal/cast/zzcf;->zzxs:Ljava/lang/String;

    if-nez p3, :cond_1

    if-eqz v3, :cond_1

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzca;->zzxd:Lcom/google/android/gms/internal/cast/zzbx;

    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzbx;->zzww:Lcom/google/android/gms/internal/cast/zzbs;

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/cast/zzbs;->zza(Lcom/google/android/gms/internal/cast/zzbs;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzca;->zzxd:Lcom/google/android/gms/internal/cast/zzbx;

    new-instance p2, Lcom/google/android/gms/internal/cast/zzcd;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    .line 14
    iget-object v1, p4, Lcom/google/android/gms/internal/cast/zzcf;->zzxl:Ljava/lang/String;

    .line 15
    invoke-direct {v2, p3, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 16
    iget-wide v4, p4, Lcom/google/android/gms/internal/cast/zzcf;->zzxt:J

    .line 18
    iget-object v6, p4, Lcom/google/android/gms/internal/cast/zzcf;->zzxm:Lorg/json/JSONObject;

    move-object v1, p2

    .line 19
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/cast/zzcd;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;JLorg/json/JSONObject;)V

    .line 20
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 23
    :catch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzca;->zzxd:Lcom/google/android/gms/internal/cast/zzbx;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const/16 p3, 0xd

    invoke-direct {p2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzbx;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final zzb(J)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzca;->zzxd:Lcom/google/android/gms/internal/cast/zzbx;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x837

    invoke-direct {p2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzbx;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
