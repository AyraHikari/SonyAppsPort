.class final Lcom/google/android/gms/internal/cast/zzcy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzzm:Lcom/google/android/gms/internal/cast/zzct;

.field private final synthetic zzzo:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzcv;Lcom/google/android/gms/internal/cast/zzct;I)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzcy;->zzzm:Lcom/google/android/gms/internal/cast/zzct;

    iput p3, p0, Lcom/google/android/gms/internal/cast/zzcy;->zzzo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcy;->zzzm:Lcom/google/android/gms/internal/cast/zzct;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzct;->zze(Lcom/google/android/gms/internal/cast/zzct;)Lcom/google/android/gms/cast/Cast$Listener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/cast/zzcy;->zzzo:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationDisconnected(I)V

    return-void
.end method
