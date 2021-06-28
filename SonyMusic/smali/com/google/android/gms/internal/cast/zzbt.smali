.class final Lcom/google/android/gms/internal/cast/zzbt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;


# instance fields
.field private final synthetic zzwv:Lcom/google/android/gms/internal/cast/zzbu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzbu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbt;->zzwv:Lcom/google/android/gms/internal/cast/zzbu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbt;->zzwv:Lcom/google/android/gms/internal/cast/zzbu;

    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzbu;->zzww:Lcom/google/android/gms/internal/cast/zzbs;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zzcu;->zzp(Ljava/lang/String;)V

    return-void
.end method
