.class public final Lcom/google/android/gms/tagmanager/zzcz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzahp:I = 0x1

.field public static final enum zzahq:I = 0x2

.field public static final enum zzahr:I = 0x3

.field private static final synthetic zzahs:[I

.field public static final enum zzaht:I

.field public static final enum zzahu:I

.field public static final enum zzahv:I

.field public static final enum zzahw:I

.field private static final synthetic zzahx:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    sget v2, Lcom/google/android/gms/tagmanager/zzcz;->zzahp:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/google/android/gms/tagmanager/zzcz;->zzahq:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/google/android/gms/tagmanager/zzcz;->zzahr:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sput-object v1, Lcom/google/android/gms/tagmanager/zzcz;->zzahs:[I

    sput v4, Lcom/google/android/gms/tagmanager/zzcz;->zzaht:I

    sput v5, Lcom/google/android/gms/tagmanager/zzcz;->zzahu:I

    sput v0, Lcom/google/android/gms/tagmanager/zzcz;->zzahv:I

    const/4 v1, 0x4

    sput v1, Lcom/google/android/gms/tagmanager/zzcz;->zzahw:I

    new-array v1, v1, [I

    sget v2, Lcom/google/android/gms/tagmanager/zzcz;->zzaht:I

    aput v2, v1, v3

    sget v2, Lcom/google/android/gms/tagmanager/zzcz;->zzahu:I

    aput v2, v1, v4

    sget v2, Lcom/google/android/gms/tagmanager/zzcz;->zzahv:I

    aput v2, v1, v5

    sget v2, Lcom/google/android/gms/tagmanager/zzcz;->zzahw:I

    aput v2, v1, v0

    sput-object v1, Lcom/google/android/gms/tagmanager/zzcz;->zzahx:[I

    return-void
.end method

.method public static zzik()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/tagmanager/zzcz;->zzahs:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
