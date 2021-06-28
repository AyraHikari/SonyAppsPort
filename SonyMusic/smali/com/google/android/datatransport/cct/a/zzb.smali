.class public final Lcom/google/android/datatransport/cct/a/zzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/config/Configurator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/a/zzb$zzf;,
        Lcom/google/android/datatransport/cct/a/zzb$zzd;,
        Lcom/google/android/datatransport/cct/a/zzb$zza;,
        Lcom/google/android/datatransport/cct/a/zzb$zzc;,
        Lcom/google/android/datatransport/cct/a/zzb$zze;,
        Lcom/google/android/datatransport/cct/a/zzb$zzb;
    }
.end annotation


# static fields
.field public static final zza:Lcom/google/firebase/encoders/config/Configurator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzb;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/a/zzb;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/a/zzb;->zza:Lcom/google/firebase/encoders/config/Configurator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/encoders/config/EncoderConfig<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzb$zzb;->zza:Lcom/google/android/datatransport/cct/a/zzb$zzb;

    const-class v1, Lcom/google/android/datatransport/cct/a/zzo;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 2
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzb$zzb;->zza:Lcom/google/android/datatransport/cct/a/zzb$zzb;

    const-class v1, Lcom/google/android/datatransport/cct/a/zze;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 3
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzb$zze;->zza:Lcom/google/android/datatransport/cct/a/zzb$zze;

    const-class v1, Lcom/google/android/datatransport/cct/a/zzr;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 4
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzb$zze;->zza:Lcom/google/android/datatransport/cct/a/zzb$zze;

    const-class v1, Lcom/google/android/datatransport/cct/a/zzk;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 5
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzb$zzc;->zza:Lcom/google/android/datatransport/cct/a/zzb$zzc;

    const-class v1, Lcom/google/android/datatransport/cct/a/zzp;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 6
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzb$zzc;->zza:Lcom/google/android/datatransport/cct/a/zzb$zzc;

    const-class v1, Lcom/google/android/datatransport/cct/a/zzg;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 7
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzb$zza;->zza:Lcom/google/android/datatransport/cct/a/zzb$zza;

    const-class v1, Lcom/google/android/datatransport/cct/a/zza;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 8
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzb$zza;->zza:Lcom/google/android/datatransport/cct/a/zzb$zza;

    const-class v1, Lcom/google/android/datatransport/cct/a/zzd;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 9
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzb$zzd;->zza:Lcom/google/android/datatransport/cct/a/zzb$zzd;

    const-class v1, Lcom/google/android/datatransport/cct/a/zzq;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 10
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzb$zzd;->zza:Lcom/google/android/datatransport/cct/a/zzb$zzd;

    const-class v1, Lcom/google/android/datatransport/cct/a/zzi;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 11
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzb$zzf;->zza:Lcom/google/android/datatransport/cct/a/zzb$zzf;

    const-class v1, Lcom/google/android/datatransport/cct/a/zzt;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 12
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzb$zzf;->zza:Lcom/google/android/datatransport/cct/a/zzb$zzf;

    const-class v1, Lcom/google/android/datatransport/cct/a/zzn;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    return-void
.end method
