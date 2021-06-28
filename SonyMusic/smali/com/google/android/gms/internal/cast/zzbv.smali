.class final Lcom/google/android/gms/internal/cast/zzbv;
.super Lcom/google/android/gms/internal/cast/zzbx;


# instance fields
.field private final synthetic zzww:Lcom/google/android/gms/internal/cast/zzbs;

.field private final synthetic zzwx:Ljava/lang/String;

.field private final synthetic zzwy:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzbs;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbv;->zzww:Lcom/google/android/gms/internal/cast/zzbs;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzbv;->zzwx:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzbv;->zzwy:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzbx;-><init>(Lcom/google/android/gms/internal/cast/zzbs;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbv;->zzww:Lcom/google/android/gms/internal/cast/zzbs;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbv;->zzwx:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzbv;->zzwy:Lorg/json/JSONObject;

    .line 3
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzxb:Lcom/google/android/gms/internal/cast/zzdu;

    const/4 v4, 0x6

    .line 4
    invoke-static {v0, v1, v4, v2, v3}, Lcom/google/android/gms/internal/cast/zzbs;->zza(Lcom/google/android/gms/internal/cast/zzbs;Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/internal/cast/zzdu;)V

    return-void
.end method
