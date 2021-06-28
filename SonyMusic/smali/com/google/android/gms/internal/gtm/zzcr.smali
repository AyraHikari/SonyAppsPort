.class final synthetic Lcom/google/android/gms/internal/gtm/zzcr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzace:Lcom/google/android/gms/internal/gtm/zzcq;

.field private final zzacf:I

.field private final zzacg:Lcom/google/android/gms/internal/gtm/zzci;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzcq;ILcom/google/android/gms/internal/gtm/zzci;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcr;->zzace:Lcom/google/android/gms/internal/gtm/zzcq;

    iput p2, p0, Lcom/google/android/gms/internal/gtm/zzcr;->zzacf:I

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzcr;->zzacg:Lcom/google/android/gms/internal/gtm/zzci;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcr;->zzace:Lcom/google/android/gms/internal/gtm/zzcq;

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzcr;->zzacf:I

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzcr;->zzacg:Lcom/google/android/gms/internal/gtm/zzci;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzcq;->zza(ILcom/google/android/gms/internal/gtm/zzci;)V

    return-void
.end method
