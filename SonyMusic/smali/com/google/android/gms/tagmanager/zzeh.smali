.class Lcom/google/android/gms/tagmanager/zzeh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzeh$zza;
    }
.end annotation


# static fields
.field private static zzaip:Lcom/google/android/gms/tagmanager/zzeh;


# instance fields
.field private volatile zzaec:Ljava/lang/String;

.field private volatile zzaiq:Lcom/google/android/gms/tagmanager/zzeh$zza;

.field private volatile zzair:Ljava/lang/String;

.field private volatile zzais:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/google/android/gms/tagmanager/zzeh$zza;->zzait:Lcom/google/android/gms/tagmanager/zzeh$zza;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzeh;->zzaiq:Lcom/google/android/gms/tagmanager/zzeh$zza;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzeh;->zzair:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzeh;->zzaec:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzeh;->zzais:Ljava/lang/String;

    return-void
.end method

.method static zziy()Lcom/google/android/gms/tagmanager/zzeh;
    .locals 2

    .line 8
    const-class v0, Lcom/google/android/gms/tagmanager/zzeh;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/google/android/gms/tagmanager/zzeh;->zzaip:Lcom/google/android/gms/tagmanager/zzeh;

    if-nez v1, :cond_0

    .line 10
    new-instance v1, Lcom/google/android/gms/tagmanager/zzeh;

    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/zzeh;-><init>()V

    sput-object v1, Lcom/google/android/gms/tagmanager/zzeh;->zzaip:Lcom/google/android/gms/tagmanager/zzeh;

    .line 11
    :cond_0
    sget-object v1, Lcom/google/android/gms/tagmanager/zzeh;->zzaip:Lcom/google/android/gms/tagmanager/zzeh;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method final getContainerId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzeh;->zzaec:Ljava/lang/String;

    return-object v0
.end method

.method final zziz()Lcom/google/android/gms/tagmanager/zzeh$zza;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzeh;->zzaiq:Lcom/google/android/gms/tagmanager/zzeh$zza;

    return-object v0
.end method

.method final zzja()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzeh;->zzair:Ljava/lang/String;

    return-object v0
.end method
