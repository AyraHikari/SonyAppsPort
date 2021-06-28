.class public Lcom/google/android/gms/wearable/Wearable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/Wearable$WearableOptions;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/wearable/Wearable$WearableOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final CLIENT_BUILDER:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/android/gms/wearable/internal/zzhg;",
            "Lcom/google/android/gms/wearable/Wearable$WearableOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/wearable/internal/zzhg;",
            ">;"
        }
    .end annotation
.end field

.field public static final CapabilityApi:Lcom/google/android/gms/wearable/CapabilityApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ChannelApi:Lcom/google/android/gms/wearable/ChannelApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DataApi:Lcom/google/android/gms/wearable/DataApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MessageApi:Lcom/google/android/gms/wearable/MessageApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NodeApi:Lcom/google/android/gms/wearable/NodeApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzaa:Lcom/google/android/gms/wearable/zzi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzab:Lcom/google/android/gms/wearable/zzu;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzx:Lcom/google/android/gms/wearable/zzc;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzy:Lcom/google/android/gms/wearable/zza;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzz:Lcom/google/android/gms/wearable/zzf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbw;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbw;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    .line 33
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->CapabilityApi:Lcom/google/android/gms/wearable/CapabilityApi;

    .line 34
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzeu;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzeu;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->MessageApi:Lcom/google/android/gms/wearable/MessageApi;

    .line 35
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzfg;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzfg;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->NodeApi:Lcom/google/android/gms/wearable/NodeApi;

    .line 36
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzaj;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzaj;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->ChannelApi:Lcom/google/android/gms/wearable/ChannelApi;

    .line 37
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzx:Lcom/google/android/gms/wearable/zzc;

    .line 38
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzy:Lcom/google/android/gms/wearable/zza;

    .line 39
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbv;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbv;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzz:Lcom/google/android/gms/wearable/zzf;

    .line 40
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzgi;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzgi;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzaa:Lcom/google/android/gms/wearable/zzi;

    .line 41
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzhq;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzhq;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzab:Lcom/google/android/gms/wearable/zzu;

    .line 42
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 43
    new-instance v0, Lcom/google/android/gms/wearable/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->CLIENT_BUILDER:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 44
    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Wearable.API"

    sget-object v2, Lcom/google/android/gms/wearable/Wearable;->CLIENT_BUILDER:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    sget-object v3, Lcom/google/android/gms/wearable/Wearable;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method
