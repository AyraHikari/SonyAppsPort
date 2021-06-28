.class public final Lcom/google/android/gms/common/internal/zzh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.2.1"


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final zzec:I

.field private final zzed:Z

.field private final zzex:Ljava/lang/String;

.field private final zzey:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzh;->packageName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzh;->zzex:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/common/internal/zzh;->zzey:Z

    .line 5
    iput p4, p0, Lcom/google/android/gms/common/internal/zzh;->zzec:I

    .line 6
    iput-boolean p5, p0, Lcom/google/android/gms/common/internal/zzh;->zzed:Z

    return-void
.end method


# virtual methods
.method final getPackageName()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzh;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method final getUseDynamicLookup()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zzh;->zzed:Z

    return v0
.end method

.method final zzq()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/google/android/gms/common/internal/zzh;->zzec:I

    return v0
.end method

.method final zzt()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzh;->zzex:Ljava/lang/String;

    return-object v0
.end method
