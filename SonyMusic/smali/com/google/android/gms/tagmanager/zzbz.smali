.class final Lcom/google/android/gms/tagmanager/zzbz;
.super Ljava/lang/Thread;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzby;


# static fields
.field private static zzahd:Lcom/google/android/gms/tagmanager/zzbz;


# instance fields
.field private volatile closed:Z

.field private final zzahb:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzahc:Z

.field private volatile zzahe:Lcom/google/android/gms/tagmanager/zzcb;

.field private final zzrm:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "GAThread"

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzbz;->zzahb:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzbz;->zzahc:Z

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzbz;->closed:Z

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzbz;->zzrm:Landroid/content/Context;

    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzbz;->zzrm:Landroid/content/Context;

    .line 11
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzbz;)Lcom/google/android/gms/tagmanager/zzcb;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzbz;->zzahe:Lcom/google/android/gms/tagmanager/zzcb;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzbz;Lcom/google/android/gms/tagmanager/zzcb;)Lcom/google/android/gms/tagmanager/zzcb;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzbz;->zzahe:Lcom/google/android/gms/tagmanager/zzcb;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/tagmanager/zzbz;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzbz;->zzrm:Landroid/content/Context;

    return-object p0
.end method

.method static zzm(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzbz;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/tagmanager/zzbz;->zzahd:Lcom/google/android/gms/tagmanager/zzbz;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/tagmanager/zzbz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzbz;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbz;->zzahd:Lcom/google/android/gms/tagmanager/zzbz;

    .line 3
    :cond_0
    sget-object p0, Lcom/google/android/gms/tagmanager/zzbz;->zzahd:Lcom/google/android/gms/tagmanager/zzbz;

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 19
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzbz;->closed:Z

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbz;->zzahb:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 21
    iget-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzbz;->zzahc:Z

    if-nez v1, :cond_0

    .line 22
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 24
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzaw(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :goto_1
    const-string v1, "Error on Google TagManager Thread: "

    .line 28
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 29
    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 30
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/gtm/zzpf;->zza(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    .line 31
    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V

    .line 32
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 33
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzav(Ljava/lang/String;)V

    const-string v0, "Google TagManager is shutting down."

    .line 34
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzav(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzbz;->zzahc:Z

    goto :goto_0
.end method

.method public final zzbd(Ljava/lang/String;)V
    .locals 7

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 15
    new-instance v6, Lcom/google/android/gms/tagmanager/zzca;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/zzca;-><init>(Lcom/google/android/gms/tagmanager/zzbz;Lcom/google/android/gms/tagmanager/zzby;JLjava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/google/android/gms/tagmanager/zzbz;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzc(Ljava/lang/Runnable;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbz;->zzahb:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
