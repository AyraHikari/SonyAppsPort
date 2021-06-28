.class final Lcom/google/android/gms/tagmanager/zzca;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzahf:Lcom/google/android/gms/tagmanager/zzby;

.field private final synthetic zzahg:J

.field private final synthetic zzahh:Ljava/lang/String;

.field private final synthetic zzahi:Lcom/google/android/gms/tagmanager/zzbz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzbz;Lcom/google/android/gms/tagmanager/zzby;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzca;->zzahi:Lcom/google/android/gms/tagmanager/zzbz;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzca;->zzahf:Lcom/google/android/gms/tagmanager/zzby;

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/zzca;->zzahg:J

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/zzca;->zzahh:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzca;->zzahi:Lcom/google/android/gms/tagmanager/zzbz;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbz;->zza(Lcom/google/android/gms/tagmanager/zzbz;)Lcom/google/android/gms/tagmanager/zzcb;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfn;->zzjq()Lcom/google/android/gms/tagmanager/zzfn;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzca;->zzahi:Lcom/google/android/gms/tagmanager/zzbz;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbz;->zzb(Lcom/google/android/gms/tagmanager/zzbz;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzca;->zzahf:Lcom/google/android/gms/tagmanager/zzby;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzfn;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzby;)V

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzca;->zzahi:Lcom/google/android/gms/tagmanager/zzbz;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzfn;->zzjr()Lcom/google/android/gms/tagmanager/zzcb;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/zzbz;->zza(Lcom/google/android/gms/tagmanager/zzbz;Lcom/google/android/gms/tagmanager/zzcb;)Lcom/google/android/gms/tagmanager/zzcb;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzca;->zzahi:Lcom/google/android/gms/tagmanager/zzbz;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbz;->zza(Lcom/google/android/gms/tagmanager/zzbz;)Lcom/google/android/gms/tagmanager/zzcb;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzca;->zzahg:J

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzca;->zzahh:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/zzcb;->zzb(JLjava/lang/String;)V

    return-void
.end method
