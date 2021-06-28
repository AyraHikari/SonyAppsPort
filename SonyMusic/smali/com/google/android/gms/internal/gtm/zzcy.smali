.class public final Lcom/google/android/gms/internal/gtm/zzcy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbn;


# instance fields
.field public zzacm:Ljava/lang/String;

.field public zzacn:D

.field public zzaco:I

.field public zzacp:I

.field public zzacq:I

.field public zzacr:I

.field public zzacs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzcy;->zzacn:D

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzcy;->zzaco:I

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzcy;->zzacp:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzcy;->zzacq:I

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzcy;->zzacr:I

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcy;->zzacs:Ljava/util/Map;

    return-void
.end method
