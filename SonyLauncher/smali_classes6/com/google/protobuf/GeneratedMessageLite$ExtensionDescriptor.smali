.class final Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/google/protobuf/FieldSet$FieldDescriptorLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExtensionDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field final enumTypeMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "*>;"
        }
    .end annotation
.end field

.field final isPacked:Z

.field final isRepeated:Z

.field final number:I

.field final type:Lcom/google/protobuf/WireFormat$FieldType;


# direct methods
.method constructor <init>(Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;ZZ)V
    .locals 0
    .param p2, "number"    # I
    .param p3, "type"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p4, "isRepeated"    # Z
    .param p5, "isPacked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "ZZ)V"
        }
    .end annotation

    .line 1083
    .local p1, "enumTypeMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1084
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 1085
    iput p2, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    .line 1086
    iput-object p3, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/google/protobuf/WireFormat$FieldType;

    .line 1087
    iput-boolean p4, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    .line 1088
    iput-boolean p5, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    .line 1089
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)I
    .locals 2
    .param p1, "other"    # Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 1136
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    iget v1, p1, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1076
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->compareTo(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)I

    move-result p1

    return p1
.end method

.method public getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "*>;"
        }
    .end annotation

    .line 1124
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;
    .locals 1

    .line 1109
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getLiteType()Lcom/google/protobuf/WireFormat$FieldType;
    .locals 1

    .line 1104
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/google/protobuf/WireFormat$FieldType;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 1099
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    return v0
.end method

.method public internalMergeFrom(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 2
    .param p1, "to"    # Lcom/google/protobuf/MessageLite$Builder;
    .param p2, "from"    # Lcom/google/protobuf/MessageLite;

    .line 1130
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-object v1, p2

    check-cast v1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public isPacked()Z
    .locals 1

    .line 1119
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    return v0
.end method

.method public isRepeated()Z
    .locals 1

    .line 1114
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    return v0
.end method
