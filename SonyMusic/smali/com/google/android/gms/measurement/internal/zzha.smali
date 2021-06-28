.class public Lcom/google/android/gms/measurement/internal/zzha;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.5.0"


# static fields
.field public static final zza:[Ljava/lang/String;

.field public static final zzb:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/16 v0, 0xe

    .line 3
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "firebase_last_notification"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "first_open_time"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "first_visit_time"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "last_deep_link_referrer"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "user_id"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "first_open_after_install"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "lifetime_user_engagement"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "session_user_engagement"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "non_personalized_ads"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "ga_session_number"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "ga_session_id"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "last_gclid"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-string v2, "session_number"

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const-string v2, "session_id"

    const/16 v16, 0xd

    aput-object v2, v1, v16

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzha;->zza:[Ljava/lang/String;

    .line 4
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_ln"

    aput-object v1, v0, v3

    const-string v1, "_fot"

    aput-object v1, v0, v4

    const-string v1, "_fvt"

    aput-object v1, v0, v5

    const-string v1, "_ldl"

    aput-object v1, v0, v6

    const-string v1, "_id"

    aput-object v1, v0, v7

    const-string v1, "_fi"

    aput-object v1, v0, v8

    const-string v1, "_lte"

    aput-object v1, v0, v9

    const-string v1, "_se"

    aput-object v1, v0, v10

    const-string v1, "_npa"

    aput-object v1, v0, v11

    const-string v1, "_sno"

    aput-object v1, v0, v12

    const-string v1, "_sid"

    aput-object v1, v0, v13

    const-string v1, "_lgclid"

    aput-object v1, v0, v14

    const-string v1, "_sno"

    aput-object v1, v0, v15

    const-string v1, "_sid"

    aput-object v1, v0, v16

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzha;->zzb:[Ljava/lang/String;

    return-void
.end method

.method public static zza(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzha;->zza:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzha;->zzb:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzik;->zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
