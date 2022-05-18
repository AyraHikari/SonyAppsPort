.class public abstract Lcom/google/android/gms/common/internal/BaseGmsClient;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.2.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/BaseGmsClient$zze;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$zza;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$zzf;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$zzg;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CONNECT_STATE_CONNECTED:I = 0x4

.field public static final CONNECT_STATE_DISCONNECTED:I = 0x1

.field public static final CONNECT_STATE_DISCONNECTING:I = 0x5

.field public static final DEFAULT_ACCOUNT:Ljava/lang/String; = "<<default account>>"

.field public static final GOOGLE_PLUS_REQUIRED_FEATURES:[Ljava/lang/String;

.field public static final KEY_PENDING_INTENT:Ljava/lang/String; = "pendingIntent"

.field private static final zzce:[Lcom/google/android/gms/common/Feature;


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private zzcf:I

.field private zzcg:J

.field private zzch:J

.field private zzci:I

.field private zzcj:J

.field private zzck:Lcom/google/android/gms/common/internal/zzh;

.field private final zzcl:Landroid/os/Looper;

.field private final zzcm:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

.field private final zzcn:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

.field private final zzco:Ljava/lang/Object;

.field private zzcp:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

.field protected zzcq:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

.field private zzcr:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/internal/BaseGmsClient$zzc<",
            "*>;>;"
        }
    .end annotation
.end field

.field private zzct:Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;"
        }
    .end annotation
.end field

.field private zzcu:I

.field private final zzcv:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

.field private final zzcw:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

.field private final zzcx:I

.field private final zzcy:Ljava/lang/String;

.field private zzcz:Lcom/google/android/gms/common/ConnectionResult;

.field private zzda:Z

.field private volatile zzdb:Lcom/google/android/gms/common/internal/zzc;

.field protected zzdc:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    .line 373
    new-array v1, v0, [Lcom/google/android/gms/common/Feature;

    sput-object v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzce:[Lcom/google/android/gms/common/Feature;

    const/4 v1, 0x2

    .line 374
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "service_esmobile"

    aput-object v2, v1, v0

    const-string v0, "service_googleme"

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->GOOGLE_PLUS_REQUIRED_FEATURES:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/GmsClientSupervisor;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->mLock:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzco:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcs:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 32
    iput v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcu:I

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcz:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    .line 34
    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzda:Z

    .line 35
    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzdb:Lcom/google/android/gms/common/internal/zzc;

    .line 36
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzdc:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v1, "Context must not be null"

    .line 37
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->mContext:Landroid/content/Context;

    const-string p1, "Handler must not be null"

    .line 38
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->mHandler:Landroid/os/Handler;

    .line 39
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcl:Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    .line 40
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcm:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    const-string p1, "API availability must not be null"

    .line 42
    invoke-static {p4, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcn:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 43
    iput p5, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcx:I

    .line 44
    iput-object p6, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcv:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    .line 45
    iput-object p7, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcw:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    .line 46
    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcy:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;Ljava/lang/String;)V
    .locals 9

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    move-result-object v3

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v4

    .line 4
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, p4

    check-cast v6, Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    .line 5
    invoke-static {p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, p5

    check-cast v7, Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v8, p6

    .line 6
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/BaseGmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/GmsClientSupervisor;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/GmsClientSupervisor;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;Ljava/lang/String;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->mLock:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzco:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcs:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcu:I

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcz:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzda:Z

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzdb:Lcom/google/android/gms/common/internal/zzc;

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzdc:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    .line 17
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->mContext:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    .line 18
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/os/Looper;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcl:Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    .line 19
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcm:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    const-string p1, "API availability must not be null"

    .line 21
    invoke-static {p4, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcn:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 22
    new-instance p1, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->mHandler:Landroid/os/Handler;

    .line 23
    iput p5, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcx:I

    .line 24
    iput-object p6, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcv:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    .line 25
    iput-object p7, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcw:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    .line 26
    iput-object p8, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcy:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcz:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/internal/IGmsServiceBroker;)Lcom/google/android/gms/common/internal/IGmsServiceBroker;
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcp:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/BaseGmsClient;)Ljava/lang/Object;
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzco:Ljava/lang/Object;

    return-object p0
.end method

.method private final zza(ILandroid/os/IInterface;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 65
    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcu:I

    .line 68
    iput-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcr:Landroid/os/IInterface;

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onSetConnectState(ILandroid/os/IInterface;)V

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_5

    .line 122
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectedLocked(Landroid/os/IInterface;)V

    goto/16 :goto_5

    .line 72
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzck:Lcom/google/android/gms/common/internal/zzh;

    if-eqz p1, :cond_3

    const-string p1, "GmsClient"

    .line 73
    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzck:Lcom/google/android/gms/common/internal/zzh;

    .line 74
    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/zzh;->zzt()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzck:Lcom/google/android/gms/common/internal/zzh;

    .line 75
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzh;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x46

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 76
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcm:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzck:Lcom/google/android/gms/common/internal/zzh;

    .line 78
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzh;->zzt()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzck:Lcom/google/android/gms/common/internal/zzh;

    .line 79
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzh;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzck:Lcom/google/android/gms/common/internal/zzh;

    .line 80
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzh;->zzq()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;

    .line 81
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzj()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzck:Lcom/google/android/gms/common/internal/zzh;

    .line 82
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzh;->getUseDynamicLookup()Z

    move-result v8

    .line 83
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zza(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    .line 84
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzdc:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 85
    :cond_3
    new-instance p1, Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzdc:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;

    .line 87
    iget p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcu:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getLocalStartServiceAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 88
    new-instance p1, Lcom/google/android/gms/common/internal/zzh;

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getLocalStartServiceAction()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 91
    invoke-static {}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->getDefaultBindFlags()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p1

    .line 92
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/common/internal/zzh;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    goto :goto_3

    .line 94
    :cond_4
    new-instance p1, Lcom/google/android/gms/common/internal/zzh;

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getStartServicePackage()Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getStartServiceAction()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 97
    invoke-static {}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->getDefaultBindFlags()I

    move-result v6

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getUseDynamicLookup()Z

    move-result v7

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/common/internal/zzh;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    .line 100
    :goto_3
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzck:Lcom/google/android/gms/common/internal/zzh;

    .line 101
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzck:Lcom/google/android/gms/common/internal/zzh;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzh;->getUseDynamicLookup()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 102
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getMinApkVersion()I

    move-result p1

    const p2, 0x1110e58

    if-ge p1, p2, :cond_6

    .line 103
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzck:Lcom/google/android/gms/common/internal/zzh;

    .line 104
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzh;->zzt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, v1

    :goto_4
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcm:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzck:Lcom/google/android/gms/common/internal/zzh;

    .line 106
    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/zzh;->zzt()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzck:Lcom/google/android/gms/common/internal/zzh;

    .line 107
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzh;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzck:Lcom/google/android/gms/common/internal/zzh;

    .line 108
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/zzh;->zzq()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;

    .line 109
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzj()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzck:Lcom/google/android/gms/common/internal/zzh;

    .line 110
    invoke-virtual {v6}, Lcom/google/android/gms/common/internal/zzh;->getUseDynamicLookup()Z

    move-result v6

    .line 112
    new-instance v7, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    invoke-direct {v7, p2, v2, v3, v6}, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p1, v7, v4, v5}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zza(Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "GmsClient"

    .line 114
    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzck:Lcom/google/android/gms/common/internal/zzh;

    .line 115
    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/zzh;->zzt()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzck:Lcom/google/android/gms/common/internal/zzh;

    .line 116
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzh;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "unable to connect to service: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 117
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x10

    .line 118
    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzdc:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 119
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    .line 120
    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(ILandroid/os/Bundle;I)V

    goto :goto_5

    .line 125
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;

    if-eqz p1, :cond_7

    .line 126
    iget-object v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcm:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzck:Lcom/google/android/gms/common/internal/zzh;

    .line 127
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzh;->zzt()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzck:Lcom/google/android/gms/common/internal/zzh;

    .line 128
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzh;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzck:Lcom/google/android/gms/common/internal/zzh;

    .line 129
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzh;->zzq()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;

    .line 130
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzj()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzck:Lcom/google/android/gms/common/internal/zzh;

    .line 131
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzh;->getUseDynamicLookup()Z

    move-result v8

    .line 132
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zza(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    .line 133
    iput-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;

    .line 134
    :cond_7
    :goto_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V
    .locals 0

    const/16 p1, 0x10

    .line 360
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V
    .locals 0

    const/4 p2, 0x0

    .line 366
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(ILandroid/os/IInterface;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/internal/zzc;)V
    .locals 0

    .line 372
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/zzc;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/common/internal/zzc;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzdb:Lcom/google/android/gms/common/internal/zzc;

    return-void
.end method

.method private final zza(IILandroid/os/IInterface;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)Z"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcu:I

    if-eq v1, p1, :cond_0

    const/4 p1, 0x0

    .line 138
    monitor-exit v0

    return p1

    .line 139
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(ILandroid/os/IInterface;)V

    const/4 p1, 0x1

    .line 140
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 141
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/BaseGmsClient;IILandroid/os/IInterface;)Z
    .locals 0

    .line 369
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(IILandroid/os/IInterface;)Z

    move-result p0

    return p0
.end method

.method private final zzb(I)V
    .locals 3

    .line 181
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzda:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzdc:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/internal/BaseGmsClient;)Z
    .locals 0

    .line 364
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzl()Z

    move-result p0

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/internal/BaseGmsClient;)Z
    .locals 0

    .line 365
    iget-boolean p0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzda:Z

    return p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcz:Lcom/google/android/gms/common/ConnectionResult;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcv:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/common/internal/BaseGmsClient;)Ljava/util/ArrayList;
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcw:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    return-object p0
.end method

.method private final zzj()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcy:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private final zzk()Z
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcu:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 162
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final zzl()Z
    .locals 2

    .line 345
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzda:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 349
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getLocalStartServiceAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 351
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    return v1
.end method


# virtual methods
.method public checkAvailabilityAndConnect()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcn:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->mContext:Landroid/content/Context;

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getMinApkVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(ILandroid/os/IInterface;)V

    .line 146
    new-instance v1, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->triggerNotAvailable(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;ILandroid/app/PendingIntent;)V

    return-void

    .line 148
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    return-void
.end method

.method protected final checkConnected()V
    .locals 2

    .line 207
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V
    .locals 1

    const-string v0, "Connection progress callbacks cannot be null."

    .line 151
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcq:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(ILandroid/os/IInterface;)V

    return-void
.end method

.method protected abstract createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public disconnect()V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzdc:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 164
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcs:Ljava/util/ArrayList;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 167
    iget-object v3, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->removeListener()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 170
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzco:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 172
    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcp:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    .line 173
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    .line 174
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(ILandroid/os/IInterface;)V

    return-void

    :catchall_0
    move-exception v0

    .line 173
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 170
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 281
    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 282
    :try_start_0
    iget p4, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcu:I

    .line 283
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcr:Landroid/os/IInterface;

    .line 284
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 285
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzco:Ljava/lang/Object;

    monitor-enter v1

    .line 286
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcp:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    .line 287
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "mConnectState="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    packed-switch p4, :pswitch_data_0

    const-string p4, "UNKNOWN"

    .line 300
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p4, "DISCONNECTING"

    .line 296
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p4, "CONNECTED"

    .line 294
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p4, "LOCAL_CONNECTING"

    .line 292
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p4, "REMOTE_CONNECTING"

    .line 290
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p4, "DISCONNECTED"

    .line 298
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    const-string p4, " mService="

    .line 301
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez v0, :cond_0

    const-string p4, "null"

    .line 303
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_1

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getServiceDescriptor()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    const-string v1, "@"

    .line 306
    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    .line 307
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_1
    const-string p4, " mServiceBroker="

    .line 308
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez p2, :cond_1

    const-string p2, "null"

    .line 310
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string p4, "IGmsServiceBroker@"

    .line 312
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    .line 313
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    :goto_2
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p4, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p2, p4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 315
    iget-wide v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzch:J

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-lez p4, :cond_2

    .line 317
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    const-string v0, "lastConnectedTime="

    .line 318
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    iget-wide v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzch:J

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 319
    invoke-virtual {p2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcg:J

    cmp-long p4, v0, v2

    if-lez p4, :cond_3

    .line 321
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    const-string v0, "lastSuspendedCause="

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 322
    iget p4, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcf:I

    packed-switch p4, :pswitch_data_1

    .line 327
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_3

    :pswitch_5
    const-string p4, "CAUSE_NETWORK_LOST"

    .line 325
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_3

    :pswitch_6
    const-string p4, "CAUSE_SERVICE_DISCONNECTED"

    .line 323
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_3
    const-string p4, " lastSuspendedTime="

    .line 329
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    iget-wide v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcg:J

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 330
    invoke-virtual {p2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcj:J

    cmp-long p4, v0, v2

    if-lez p4, :cond_4

    .line 333
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string p4, "lastFailedStatus="

    .line 334
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    iget p4, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzci:I

    .line 335
    invoke-static {p4}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string p1, " lastFailedTime="

    .line 337
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    iget-wide p3, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcj:J

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 338
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 287
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 284
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method protected enableLocalFallback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 1

    .line 197
    sget-object v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzce:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public final getAvailableFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzdb:Lcom/google/android/gms/common/internal/zzc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzc;->zzdm:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public getConnectionHint()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEndpointPackageName()Ljava/lang/String;
    .locals 2

    .line 355
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzck:Lcom/google/android/gms/common/internal/zzh;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzh;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to connect when checking package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 1

    .line 198
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method protected getLocalStartServiceAction()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcl:Landroid/os/Looper;

    return-object v0
.end method

.method public getMinApkVersion()I
    .locals 1

    .line 358
    sget v0, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    return v0
.end method

.method public getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/IAccountAccessor;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    .line 218
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getGetServiceRequestExtraArgs()Landroid/os/Bundle;

    move-result-object v0

    .line 219
    new-instance v1, Lcom/google/android/gms/common/internal/GetServiceRequest;

    iget v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcx:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/GetServiceRequest;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->mContext:Landroid/content/Context;

    .line 220
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 221
    iput-object v2, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzak:Ljava/lang/String;

    .line 225
    iput-object v0, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzdw:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    .line 230
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/common/api/Scope;

    iput-object p2, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzdv:[Lcom/google/android/gms/common/api/Scope;

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->requiresSignIn()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 234
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getAccount()Landroid/accounts/Account;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getAccount()Landroid/accounts/Account;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/accounts/Account;

    const-string v0, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {p2, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :goto_0
    iput-object p2, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzdx:Landroid/accounts/Account;

    if-eqz p1, :cond_3

    .line 241
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzdu:Landroid/os/IBinder;

    goto :goto_1

    .line 243
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->requiresAccount()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 244
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getAccount()Landroid/accounts/Account;

    move-result-object p1

    .line 245
    iput-object p1, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzdx:Landroid/accounts/Account;

    .line 247
    :cond_3
    :goto_1
    sget-object p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzce:[Lcom/google/android/gms/common/Feature;

    .line 249
    iput-object p1, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzdy:[Lcom/google/android/gms/common/Feature;

    .line 250
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getApiFeatures()[Lcom/google/android/gms/common/Feature;

    move-result-object p1

    .line 251
    iput-object p1, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzdz:[Lcom/google/android/gms/common/Feature;

    .line 252
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzco:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcp:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    if-eqz p2, :cond_4

    .line 254
    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcp:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    new-instance v0, Lcom/google/android/gms/common/internal/BaseGmsClient$zze;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzdc:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 255
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/common/internal/BaseGmsClient$zze;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V

    .line 257
    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/common/internal/IGmsServiceBroker;->getService(Lcom/google/android/gms/common/internal/IGmsCallbacks;Lcom/google/android/gms/common/internal/GetServiceRequest;)V

    goto :goto_2

    :cond_4
    const-string p2, "GmsClient"

    const-string v0, "mServiceBroker is null, client disconnected"

    .line 259
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_3
    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    .line 267
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x8

    .line 268
    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzdc:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 269
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/4 v0, 0x0

    .line 270
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void

    :catch_2
    move-exception p1

    .line 265
    throw p1

    :catch_3
    move-exception p1

    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    .line 262
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    .line 263
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->triggerConnectionSuspended(I)V

    return-void
.end method

.method protected getScopes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 280
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getService()Landroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcu:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkConnected()V

    .line 215
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcr:Landroid/os/IInterface;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Client is connected but service is null"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 216
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcr:Landroid/os/IInterface;

    monitor-exit v0

    return-object v1

    .line 213
    :cond_1
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 217
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServiceBrokerBinder()Landroid/os/IBinder;
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzco:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcp:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 342
    monitor-exit v0

    return-object v1

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcp:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 344
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract getServiceDescriptor()Ljava/lang/String;
.end method

.method public getSignInIntent()Landroid/content/Intent;
    .locals 2

    .line 279
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a sign in API"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getStartServiceAction()Ljava/lang/String;
.end method

.method protected getStartServicePackage()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms"

    return-object v0
.end method

.method protected getUseDynamicLookup()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcu:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 156
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isConnecting()Z
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcu:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcu:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 159
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onConnectedLocked(Landroid/os/IInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzch:J

    return-void
.end method

.method protected onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .line 62
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzci:I

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcj:J

    return-void
.end method

.method protected onConnectionSuspended(I)V
    .locals 2

    .line 59
    iput p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcf:I

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcg:J

    return-void
.end method

.method protected onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/internal/BaseGmsClient$zzf;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzf;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 p2, -0x1

    .line 200
    invoke-virtual {v0, p1, p4, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 201
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method onSetConnectState(ILandroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    return-void
.end method

.method public onUserSignOut(Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;)V
    .locals 0

    .line 274
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;->onSignOutComplete()V

    return-void
.end method

.method public providesSignIn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requiresAccount()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requiresGooglePlayServices()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public requiresSignIn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public triggerConnectionSuspended(I)V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzdc:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 177
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x6

    .line 178
    invoke-virtual {v0, v2, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 179
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected triggerNotAvailable(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;ILandroid/app/PendingIntent;)V
    .locals 2

    const-string v0, "Connection progress callbacks cannot be null."

    .line 188
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcq:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    .line 189
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzdc:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 190
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    .line 191
    invoke-virtual {p1, v1, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 192
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected final zza(ILandroid/os/Bundle;I)V
    .locals 2

    .line 203
    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzg;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/Bundle;)V

    const/4 p1, 0x7

    const/4 v1, -0x1

    .line 204
    invoke-virtual {p2, p1, p3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 205
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
