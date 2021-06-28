.class public final enum Lcom/google/android/datatransport/cct/a/zzp$zzb;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/a/zzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/datatransport/cct/a/zzp$zzb;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/datatransport/cct/a/zzp$zzb;

.field public static final enum zzb:Lcom/google/android/datatransport/cct/a/zzp$zzb;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzp$zzb;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/datatransport/cct/a/zzp$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/a/zzp$zzb;->zza:Lcom/google/android/datatransport/cct/a/zzp$zzb;

    .line 2
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzp$zzb;

    const-string v1, "ANDROID_FIREBASE"

    const/4 v3, 0x1

    const/16 v4, 0x17

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/datatransport/cct/a/zzp$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/a/zzp$zzb;->zzb:Lcom/google/android/datatransport/cct/a/zzp$zzb;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lcom/google/android/datatransport/cct/a/zzp$zzb;

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzp$zzb;->zza:Lcom/google/android/datatransport/cct/a/zzp$zzb;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzp$zzb;->zzb:Lcom/google/android/datatransport/cct/a/zzp$zzb;

    aput-object v1, v0, v3

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

    return-void
.end method
