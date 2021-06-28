.class final synthetic Lcom/google/android/gms/tasks/zzv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/tasks/zzx;


# static fields
.field static final zza:Lcom/google/android/gms/tasks/zzx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tasks/zzv;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzv;-><init>()V

    sput-object v0, Lcom/google/android/gms/tasks/zzv;->zza:Lcom/google/android/gms/tasks/zzx;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/tasks/zzw;->zzb(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    return-object p1
.end method
