.class public Lcom/google/android/gms/measurement/internal/zzgy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.5.0"


# static fields
.field public static final zza:[Ljava/lang/String;

.field public static final zzb:[Ljava/lang/String;

.field public static final zzc:[Ljava/lang/String;

.field public static final zzd:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0x1e

    .line 4
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "app_background"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "app_clear_data"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "app_exception"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "app_remove"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "app_upgrade"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "app_install"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "app_update"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "ga_campaign"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-string v1, "error"

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const-string v1, "first_open"

    const/16 v11, 0x9

    aput-object v1, v0, v11

    const-string v1, "first_visit"

    const/16 v12, 0xa

    aput-object v1, v0, v12

    const-string v1, "in_app_purchase"

    const/16 v13, 0xb

    aput-object v1, v0, v13

    const-string v1, "notification_dismiss"

    const/16 v14, 0xc

    aput-object v1, v0, v14

    const-string v1, "notification_foreground"

    const/16 v15, 0xd

    aput-object v1, v0, v15

    const-string v1, "notification_open"

    const/16 v16, 0xe

    aput-object v1, v0, v16

    const-string v1, "notification_receive"

    const/16 v17, 0xf

    aput-object v1, v0, v17

    const-string v1, "os_update"

    const/16 v17, 0x10

    aput-object v1, v0, v17

    const-string v1, "session_start"

    const/16 v17, 0x11

    aput-object v1, v0, v17

    const-string v1, "user_engagement"

    const/16 v17, 0x12

    aput-object v1, v0, v17

    const-string v1, "ad_exposure"

    const/16 v17, 0x13

    aput-object v1, v0, v17

    const-string v1, "adunit_exposure"

    const/16 v17, 0x14

    aput-object v1, v0, v17

    const-string v1, "ad_query"

    const/16 v17, 0x15

    aput-object v1, v0, v17

    const-string v1, "ad_activeview"

    const/16 v17, 0x16

    aput-object v1, v0, v17

    const-string v1, "ad_impression"

    const/16 v17, 0x17

    aput-object v1, v0, v17

    const-string v1, "ad_click"

    const/16 v17, 0x18

    aput-object v1, v0, v17

    const-string v1, "ad_reward"

    const/16 v17, 0x19

    aput-object v1, v0, v17

    const-string v1, "screen_view"

    const/16 v17, 0x1a

    aput-object v1, v0, v17

    const-string v1, "ga_extra_parameter"

    const/16 v17, 0x1b

    aput-object v1, v0, v17

    const-string v1, "session_start_with_rollout"

    const/16 v17, 0x1c

    aput-object v1, v0, v17

    const-string v1, "firebase_campaign"

    const/16 v17, 0x1d

    aput-object v1, v0, v17

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzgy;->zza:[Ljava/lang/String;

    .line 5
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "ad_impression"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzgy;->zzb:[Ljava/lang/String;

    const/16 v0, 0x1e

    .line 6
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_ab"

    aput-object v1, v0, v2

    const-string v1, "_cd"

    aput-object v1, v0, v3

    const-string v1, "_ae"

    aput-object v1, v0, v4

    const-string v1, "_ui"

    aput-object v1, v0, v5

    const-string v1, "_ug"

    aput-object v1, v0, v6

    const-string v1, "_in"

    aput-object v1, v0, v7

    const-string v1, "_au"

    aput-object v1, v0, v8

    const-string v1, "_cmp"

    aput-object v1, v0, v9

    const-string v1, "_err"

    aput-object v1, v0, v10

    const-string v1, "_f"

    aput-object v1, v0, v11

    const-string v1, "_v"

    aput-object v1, v0, v12

    const-string v1, "_iap"

    aput-object v1, v0, v13

    const-string v1, "_nd"

    aput-object v1, v0, v14

    const-string v1, "_nf"

    aput-object v1, v0, v15

    const-string v1, "_no"

    aput-object v1, v0, v16

    const-string v1, "_nr"

    const/16 v17, 0xf

    aput-object v1, v0, v17

    const-string v1, "_ou"

    const/16 v17, 0x10

    aput-object v1, v0, v17

    const-string v1, "_s"

    const/16 v17, 0x11

    aput-object v1, v0, v17

    const-string v1, "_e"

    const/16 v17, 0x12

    aput-object v1, v0, v17

    const-string v1, "_xa"

    const/16 v17, 0x13

    aput-object v1, v0, v17

    const-string v1, "_xu"

    const/16 v17, 0x14

    aput-object v1, v0, v17

    const-string v1, "_aq"

    const/16 v17, 0x15

    aput-object v1, v0, v17

    const-string v1, "_aa"

    const/16 v17, 0x16

    aput-object v1, v0, v17

    const-string v1, "_ai"

    const/16 v17, 0x17

    aput-object v1, v0, v17

    const-string v1, "_ac"

    const/16 v17, 0x18

    aput-object v1, v0, v17

    const-string v1, "_ar"

    const/16 v17, 0x19

    aput-object v1, v0, v17

    const-string v1, "_vs"

    const/16 v17, 0x1a

    aput-object v1, v0, v17

    const-string v1, "_ep"

    const/16 v17, 0x1b

    aput-object v1, v0, v17

    const-string v1, "_ssr"

    const/16 v17, 0x1c

    aput-object v1, v0, v17

    const-string v1, "_cmp"

    const/16 v17, 0x1d

    aput-object v1, v0, v17

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzgy;->zzc:[Ljava/lang/String;

    const/16 v0, 0x14

    .line 7
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "purchase"

    aput-object v1, v0, v2

    const-string v1, "refund"

    aput-object v1, v0, v3

    const-string v1, "add_payment_info"

    aput-object v1, v0, v4

    const-string v1, "add_shipping_info"

    aput-object v1, v0, v5

    const-string v1, "add_to_cart"

    aput-object v1, v0, v6

    const-string v1, "add_to_wishlist"

    aput-object v1, v0, v7

    const-string v1, "begin_checkout"

    aput-object v1, v0, v8

    const-string v1, "remove_from_cart"

    aput-object v1, v0, v9

    const-string v1, "select_item"

    aput-object v1, v0, v10

    const-string v1, "select_promotion"

    aput-object v1, v0, v11

    const-string v1, "view_cart"

    aput-object v1, v0, v12

    const-string v1, "view_item"

    aput-object v1, v0, v13

    const-string v1, "view_item_list"

    aput-object v1, v0, v14

    const-string v1, "view_promotion"

    aput-object v1, v0, v15

    const-string v1, "ecommerce_purchase"

    aput-object v1, v0, v16

    const-string v1, "purchase_refund"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "set_checkout_option"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "checkout_progress"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "select_content"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "view_search_results"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzgy;->zzd:[Ljava/lang/String;

    return-void
.end method

.method public static zza(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgy;->zzc:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzgy;->zza:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzik;->zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgy;->zza:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzgy;->zzc:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzik;->zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
