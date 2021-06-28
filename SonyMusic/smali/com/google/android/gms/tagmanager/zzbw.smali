.class final Lcom/google/android/gms/tagmanager/zzbw;
.super Ljava/lang/Object;


# instance fields
.field private final zzabb:J

.field private final zzagy:J

.field private final zzagz:J

.field private zzaha:Ljava/lang/String;


# direct methods
.method constructor <init>(JJJ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzbw;->zzagy:J

    .line 5
    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/zzbw;->zzabb:J

    .line 6
    iput-wide p5, p0, Lcom/google/android/gms/tagmanager/zzbw;->zzagz:J

    return-void
.end method


# virtual methods
.method final zzbc(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzbw;->zzaha:Ljava/lang/String;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method final zzih()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzbw;->zzagy:J

    return-wide v0
.end method

.method final zzii()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzbw;->zzagz:J

    return-wide v0
.end method

.method final zzij()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbw;->zzaha:Ljava/lang/String;

    return-object v0
.end method
