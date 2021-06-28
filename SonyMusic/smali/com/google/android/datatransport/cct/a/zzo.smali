.class public abstract Lcom/google/android/datatransport/cct/a/zzo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Ljava/util/List;)Lcom/google/android/datatransport/cct/a/zzo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/cct/a/zzr;",
            ">;)",
            "Lcom/google/android/datatransport/cct/a/zzo;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/a/zze;

    invoke-direct {v0, p0}, Lcom/google/android/datatransport/cct/a/zze;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public abstract zza()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/cct/a/zzr;",
            ">;"
        }
    .end annotation
.end method
