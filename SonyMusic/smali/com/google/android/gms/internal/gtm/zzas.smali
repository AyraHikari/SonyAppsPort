.class public final Lcom/google/android/gms/internal/gtm/zzas;
.super Ljava/lang/Object;


# instance fields
.field private final zztc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzut:Ljava/lang/String;

.field private final zzww:J

.field private final zzwx:Ljava/lang/String;

.field private final zzwy:Z

.field private zzwz:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/internal/gtm/zzas;->zzww:J

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzas;->zzut:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/gtm/zzas;->zzwx:Ljava/lang/String;

    .line 7
    iput-boolean p5, p0, Lcom/google/android/gms/internal/gtm/zzas;->zzwy:Z

    .line 8
    iput-wide p6, p0, Lcom/google/android/gms/internal/gtm/zzas;->zzwz:J

    if-eqz p8, :cond_0

    .line 10
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p8}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzas;->zztc:Ljava/util/Map;

    return-void

    .line 11
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzas;->zztc:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zzb(J)V
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/google/android/gms/internal/gtm/zzas;->zzwz:J

    return-void
.end method

.method public final zzbt()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzas;->zzut:Ljava/lang/String;

    return-object v0
.end method

.method public final zzdi()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzas;->zzww:J

    return-wide v0
.end method

.method public final zzdj()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzas;->zzwx:Ljava/lang/String;

    return-object v0
.end method

.method public final zzdk()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzas;->zzwy:Z

    return v0
.end method

.method public final zzdl()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzas;->zzwz:J

    return-wide v0
.end method

.method public final zzdm()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzas;->zztc:Ljava/util/Map;

    return-object v0
.end method
