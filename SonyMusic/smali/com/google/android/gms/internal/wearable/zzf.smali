.class public final Lcom/google/android/gms/internal/wearable/zzf;
.super Ljava/lang/Object;


# instance fields
.field public final zzfw:Lcom/google/android/gms/internal/wearable/zzg;

.field public final zzfx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/wearable/zzg;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/wearable/zzg;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/wearable/zzf;->zzfw:Lcom/google/android/gms/internal/wearable/zzg;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/wearable/zzf;->zzfx:Ljava/util/List;

    return-void
.end method
