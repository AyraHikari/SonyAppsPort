.class public final enum Lcom/google/android/datatransport/cct/a/zzt$zzc;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/a/zzt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/datatransport/cct/a/zzt$zzc;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/datatransport/cct/a/zzt$zzc;

.field public static final enum zzb:Lcom/google/android/datatransport/cct/a/zzt$zzc;

.field public static final enum zzc:Lcom/google/android/datatransport/cct/a/zzt$zzc;

.field public static final enum zzd:Lcom/google/android/datatransport/cct/a/zzt$zzc;

.field public static final enum zze:Lcom/google/android/datatransport/cct/a/zzt$zzc;

.field public static final enum zzf:Lcom/google/android/datatransport/cct/a/zzt$zzc;

.field public static final enum zzg:Lcom/google/android/datatransport/cct/a/zzt$zzc;

.field public static final enum zzh:Lcom/google/android/datatransport/cct/a/zzt$zzc;

.field public static final enum zzi:Lcom/google/android/datatransport/cct/a/zzt$zzc;

.field public static final enum zzj:Lcom/google/android/datatransport/cct/a/zzt$zzc;

.field public static final enum zzk:Lcom/google/android/datatransport/cct/a/zzt$zzc;

.field public static final enum zzl:Lcom/google/android/datatransport/cct/a/zzt$zzc;

.field public static final enum zzm:Lcom/google/android/datatransport/cct/a/zzt$zzc;

.field public static final enum zzn:Lcom/google/android/datatransport/cct/a/zzt$zzc;

.field public static final enum zzo:Lcom/google/android/datatransport/cct/a/zzt$zzc;

.field public static final enum zzp:Lcom/google/android/datatransport/cct/a/zzt$zzc;

.field public static final enum zzq:Lcom/google/android/datatransport/cct/a/zzt$zzc;

.field public static final enum zzr:Lcom/google/android/datatransport/cct/a/zzt$zzc;

.field public static final enum zzs:Lcom/google/android/datatransport/cct/a/zzt$zzc;

.field private static final zzt:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/datatransport/cct/a/zzt$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzu:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const-string v1, "MOBILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/datatransport/cct/a/zzt$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zza:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    .line 2
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const-string v1, "WIFI"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/datatransport/cct/a/zzt$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzb:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    .line 3
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const-string v1, "MOBILE_MMS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/datatransport/cct/a/zzt$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzc:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    .line 4
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const-string v1, "MOBILE_SUPL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/datatransport/cct/a/zzt$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzd:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    .line 5
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const-string v1, "MOBILE_DUN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/datatransport/cct/a/zzt$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zze:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    .line 6
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const-string v1, "MOBILE_HIPRI"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/google/android/datatransport/cct/a/zzt$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzf:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    .line 7
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const-string v1, "WIMAX"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/google/android/datatransport/cct/a/zzt$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzg:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    .line 8
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const-string v1, "BLUETOOTH"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/google/android/datatransport/cct/a/zzt$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzh:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    .line 9
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const-string v1, "DUMMY"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/google/android/datatransport/cct/a/zzt$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzi:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    .line 10
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const-string v1, "ETHERNET"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/google/android/datatransport/cct/a/zzt$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzj:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    .line 11
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const-string v1, "MOBILE_FOTA"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/google/android/datatransport/cct/a/zzt$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzk:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    .line 12
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const-string v1, "MOBILE_IMS"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/google/android/datatransport/cct/a/zzt$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzl:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    .line 13
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const-string v1, "MOBILE_CBS"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/google/android/datatransport/cct/a/zzt$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzm:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    .line 14
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const-string v1, "WIFI_P2P"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lcom/google/android/datatransport/cct/a/zzt$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzn:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    .line 15
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const-string v1, "MOBILE_IA"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15}, Lcom/google/android/datatransport/cct/a/zzt$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzo:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    .line 16
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const-string v1, "MOBILE_EMERGENCY"

    const/16 v15, 0xf

    const/16 v14, 0xf

    invoke-direct {v0, v1, v15, v14}, Lcom/google/android/datatransport/cct/a/zzt$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzp:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    .line 17
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const-string v1, "PROXY"

    const/16 v14, 0x10

    const/16 v15, 0x10

    invoke-direct {v0, v1, v14, v15}, Lcom/google/android/datatransport/cct/a/zzt$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzq:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    .line 18
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const-string v1, "VPN"

    const/16 v14, 0x11

    const/16 v15, 0x11

    invoke-direct {v0, v1, v14, v15}, Lcom/google/android/datatransport/cct/a/zzt$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzr:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    .line 19
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const-string v1, "NONE"

    const/16 v14, 0x12

    const/4 v15, -0x1

    invoke-direct {v0, v1, v14, v15}, Lcom/google/android/datatransport/cct/a/zzt$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzs:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const/16 v0, 0x13

    .line 20
    new-array v0, v0, [Lcom/google/android/datatransport/cct/a/zzt$zzc;

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zza:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzb:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzc:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzd:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zze:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzf:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzg:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzh:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzi:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzj:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzk:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzl:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzm:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const/16 v14, 0xc

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzn:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const/16 v14, 0xd

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzo:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const/16 v14, 0xe

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzp:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const/16 v14, 0xf

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzq:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const/16 v14, 0x10

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzr:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const/16 v14, 0x11

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzs:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const/16 v14, 0x12

    aput-object v1, v0, v14

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzt:Landroid/util/SparseArray;

    .line 22
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzt:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zza:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzt:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzb:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzt:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzc:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzt:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzd:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzt:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zze:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzt:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzf:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzt:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzg:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzt:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzh:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzt:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzi:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzt:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzj:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzt:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzk:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzt:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzl:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzt:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzm:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzt:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzn:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzt:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzo:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzt:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzp:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzt:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzq:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzt:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzr:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzt:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzs:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzu:I

    return-void
.end method

.method public static zza(I)Lcom/google/android/datatransport/cct/a/zzt$zzc;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzt:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/cct/a/zzt$zzc;

    return-object p0
.end method


# virtual methods
.method public zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzu:I

    return v0
.end method
