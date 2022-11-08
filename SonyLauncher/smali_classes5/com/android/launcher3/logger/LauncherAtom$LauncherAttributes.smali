.class public final Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LauncherAttributes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;",
        "Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributesOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

.field public static final ITEM_ATTRIBUTES_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private itemAttributes_:Lcom/google/protobuf/Internal$IntList;


# direct methods
.method static bridge synthetic -$$Nest$maddAllItemAttributes(Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->addAllItemAttributes(Ljava/lang/Iterable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddItemAttributes(Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->addItemAttributes(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearItemAttributes(Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->clearItemAttributes()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetItemAttributes(Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->setItemAttributes(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 3161
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;-><init>()V

    .line 3164
    .local v0, "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    .line 3165
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3167
    .end local v0    # "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2819
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2820
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lcom/google/protobuf/Internal$IntList;

    .line 2821
    return-void
.end method

.method private addAllItemAttributes(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2902
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->ensureItemAttributesIsMutable()V

    .line 2903
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2905
    return-void
.end method

.method private addItemAttributes(I)V
    .locals 1
    .param p1, "value"    # I

    .line 2889
    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->ensureItemAttributesIsMutable()V

    .line 2890
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 2891
    return-void
.end method

.method private clearItemAttributes()V
    .locals 1

    .line 2915
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lcom/google/protobuf/Internal$IntList;

    .line 2916
    return-void
.end method

.method private ensureItemAttributesIsMutable()V
    .locals 1

    .line 2862
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2863
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lcom/google/protobuf/Internal$IntList;

    .line 2864
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lcom/google/protobuf/Internal$IntList;

    .line 2866
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;
    .locals 1

    .line 3170
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder;
    .locals 1

    .line 2993
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;)Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    .line 2996
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2970
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-static {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2976
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2934
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2941
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2981
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2988
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2958
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2965
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2921
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2928
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2946
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2953
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;",
            ">;"
        }
    .end annotation

    .line 3176
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setItemAttributes(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 2877
    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->ensureItemAttributesIsMutable()V

    .line 2878
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    .line 2879
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 3113
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3154
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 3151
    :pswitch_0
    return-object v2

    .line 3148
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 3133
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->PARSER:Lcom/google/protobuf/Parser;

    .line 3134
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;>;"
    if-nez v0, :cond_1

    .line 3135
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    monitor-enter v1

    .line 3136
    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 3137
    if-nez v0, :cond_0

    .line 3138
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 3141
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->PARSER:Lcom/google/protobuf/Parser;

    .line 3143
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3145
    :cond_1
    :goto_0
    return-object v0

    .line 3130
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    return-object v0

    .line 3121
    :pswitch_4
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "itemAttributes_"

    aput-object v2, v0, v1

    .line 3124
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0016"

    .line 3126
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 3118
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder-IA;)V

    return-object v0

    .line 3115
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemAttributes(I)I
    .locals 1
    .param p1, "index"    # I

    .line 2859
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getItemAttributesCount()I
    .locals 1

    .line 2847
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getItemAttributesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2835
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method
